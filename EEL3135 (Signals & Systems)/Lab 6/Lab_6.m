clear all; close all; clc;

%% Lab 6, Images in Greyscale and RGB.

%% Exercise 6.1

% USER DEFINED VARIABLES
w = 15; % Width
x = 1:160; % Horiztonal Axis
y = 1:80; % Vertical Axis
% == > Our grayscale value, x and y define location, z the value, centered
% (80, 40) <== 
z = round (127* exp ( -1/ w .^2*(( y .' -40) .^2+( x -80) .^2) ) ) ;
% == > Lets MATLAB know we are working in grayscale <==
colormap ( gray ) ;
% == > Downsamples half of our x values, and upsamples our y axis <==
[ xs , ys , zs ] = image_system1 (z ,2 ,2) ;
za = image_system2 ( zs , -10 ,35) ;
zb = image_system3 ( za , -30 ,35) ;

% PLOT RESULT WITH SUBPLOT
figure (1) ;
subplot (2 ,2 ,1) ; % == > Create 2x2 plot grid, place in top left <==
imagesc (x , y , z ) ; % == > Display image with x y position and z value <==
axis image ; % == > 1:1 aspect ratio for image to display clearly <==
title ( ' Original ')
subplot (2 ,2 ,2) ; % == > Places in top right of 2x2 grid <==
imagesc ( xs , ys , zs ) ; % == > Display image with xs ys position and zs value <==
axis image ; % == > 1:1 aspect ratio for image to display clearly <==
title ( ' After System 1 ')

subplot (2 ,2 ,3) ; % == > Places in bottom left of 2x2 grid <==
imagesc ( xs , ys , za ) ; % == > Display image in xs ys position and za value <==
axis image ; % == > 1:1 aspect ratio for image to display clearly <==
title ( ' After System 2 ')
subplot (2 ,2 ,4) ; % == > Places in bottom right of 2x2 grid <==
imagesc ( xs , ys , zb ) ; % == > Display image in xs ys position and zb value <==
axis image ; % == > 1:1 aspect ratio for image to display clearly <==
title ( ' After System 3 ')

%% Exercise 6.2

lighthouse = load('lighthouse.mat');
data = lighthouse.xx;

[xs, ys, zf] = image_sample(data, 2);

figure;
imagesc(xs, ys, zf);
colormap(gray);
axis image;
title('Lighthouse Sampled');

% Part D/E

data_aa = image_antialias(data);
data_aax6 = data;

for i = 1:6

    data_aax6 = image_antialias(data_aax6);

end

% Part E/F

[xz, yz, lighthouse_zeros] = image_insertzeros(data_aa, 2);

lighthouse_interpolated = lighthouse_zeros;
for i = 1:6
    lighthouse_interpolated = image_antialias(lighthouse_interpolated);
end

% Part D

figure;
subplot(1,4,1);
imshow(data);
title('Original');
subplot(1,4,2);
imagesc(xs, ys, zf);
colormap(gray);
axis image;
title('Sampled');
subplot(1,4,3);
imshow(data_aa);
title('Anti Aliased (1x)')
subplot(1,4,4);
imshow(data_aax6);
title('Anti Aliased (6x)')

% Antialiasing smooths edges and causes blur, good for removing sharp
% edges, and functions by averaging the weight of the pixel sampled with
% pixels in immediate contact. Useful for rendering games to reduce jagged
% edges.

% Part F

figure;
subplot(1,3,1);
imshow(data);
title('Original');
subplot(1,3,2);
imagesc(xs, ys,lighthouse_zeros);
colormap(gray);
axis image;
title('Ligthouse Zeros');
subplot(1,3,3);
imshow(lighthouse_interpolated);
title('Interpolated')

% The zeros function causes a grid pattern over the image to be removed,
% and interpolation refills this in by averaging the values of nearby
% pixels, causing the smoothest look, although it does cause the saturation
% range to shrink, which can be beneficial if you want a homogenous look,
% but might cause issues when the difference is important.

%% Functions

function [ xs , ys , zs ] = image_system1 (z , Dx , Uy )

    % IMAGE_SYSTEM1 === > Takes original z matrix and upsamples/downsamples <===
    % == > Pre-allocates memory to the new down/upsampled matrix <==
    zs = zeros ( ceil ( Uy * size (z ,1) ) , ceil ( size (z ,2) / Dx ) ) ;
    % == > Uy upsamples by taking Uy times as many row values and Dx downsamples
    % by dividing the amount of samples by Dx <==
    ys = 1: ceil ( Uy * size (z ,1) ) ;
    xs = 1: ceil ( size (z ,2) / Dx ) ;
    % == > Takes every Uy rows and takes a column every Dx columns <==
    zs (1: Uy : end ,1: end ) = z (1: end ,1: Dx : end ) ;

end

function [ za ] = image_system2 (z , Sx , Sy )
    % IMAGE_SYSTEM2 === > Transforms the image, shifting it based on Sx, Sy <===
    % ==== > Creates a 2d matrix with the same rows and column data as z <====
    za = zeros ( size (z ,1) , size (z ,2) ) ;
    for nn = 1: size (z ,1)
        for mm = 1: size (z ,2)
        % ==== > Checks if nn - Sy and mm - Sx are within the image bounds when transformed <====
            if nn > Sy && nn - Sy < size (z ,1) && mm > Sx && mm - Sx < size (z ,2)
                % ==== > Lowers z value, dimming, and transforms the image <====
                za ( nn , mm ) = 1/2* z ( nn - Sy , mm - Sx ) ;
            end
        end
    end
end

function [ zb ] = image_system3 ( za , Sx , Sy )

    % IMAGE_SYSTEM3 === > Causes the image to invert, wrapping it around the edge of the frame <===
    
    % ==== > Recreates the matrix with one row and column removed <====
    x = 0:1: size ( za ,2) -1;
    y = 0:1: size ( za ,1) -1;
    
    % ==== > Uses modulus to shift and wrap around our rows and columns <====
    xs = mod (x - Sx , size ( za ,2) ) ;
    ys = mod (y - Sy , size ( za ,1) ) ;
    
    % ==== > Adds one so we dont have zb(0) and recreates matrix with wraparound <====
    zb = za ( ys +1 , xs +1) ;

end

function [xs, ys, zs] = image_sample(z, D)

    ys = 1:D:size(z,1);
    xs = 1:D:size(z,2);
    zs = z(ys, xs);

end

function zaa = image_antialias(z)

    [M, N] = size(z);
    zaa = z;
    
    for y = 2:M-1
        for x = 2:N-1
            zaa(y, x) = 0.5*z(y, x) + 0.125*(z(y-1, x) + z(y+1, x) + z(y, x-1) + z(y, x+1));
        end
    end

end

function [ xz , yz , zz ] = image_insertzeros (zaas , U)

    [M, N] = size(zaas);
    Mz = M + (M-1)*(U-1);
    Nz = N + (N-1)*(U-1);
    zz = zeros(Mz, Nz);
    zz(1:U:end, 1:U:end) = zaas;
    xz = 1:Nz;
    yz = 1:Mz;

end