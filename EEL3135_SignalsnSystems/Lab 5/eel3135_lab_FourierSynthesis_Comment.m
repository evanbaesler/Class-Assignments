%% ACKNOWLEDGEMENTS / REFERENCES: 
% This code uses functions written by Ken Schutte in 2019, which is used to
% read and decode midi files. The code is under a GNU General
% Public License, enabling us to run, study, share, and modify the
% software. 
%
% More info can be found at: http://www.kenschutte.com/midi


%% INITIAL SETUP
clear
close all
clc

%% DEFINE MUSIC

% INTITIAL VARIABLES
Fs = 44100;             % Sampling frequency (Hz)

%  Reads our audio file, finding the pitch, endtime shows duration.
[Notes, endtime] = midiInfo(readmidi('gym.mid'), 0, 2);
L = size(Notes,1);      % How many notes in our midi file

%  Builds a song from our notes, gives an amplitudes of 1, defines the key
%  of our note, the duration, and takes our sampling frequency.
x = build_song(ones(L,1), Notes(:,3), Notes(:,6)-Notes(:,5), Fs);

%  Finds the duration of the notes and finds the total number of samples
tot_samples = ceil(sum(Notes(:,6)-Notes(:,5))*Fs);

%  Creates a time vector for creating our waveform
t = 0:1/Fs:(tot_samples-1)/Fs;

% Plots our waveform
figure(1); 
subplot(211)
plot(t, x);
xlabel('Time [s]')
ylabel('Amplitude')
% Replots with a smaller scope, 'zooming in'
subplot(212)
plot(t, x);
xlabel('Time [s]')
ylabel('Amplitude')
axis([0 0.1 -1 1]) % Restricts our x-axis to the first 0.1 seconds, and y axis to -1:1

%  ===> Describe what the next line does here <===
input('Click any button to play sound')
soundsc(x, Fs);



% ========
% YOU DO *NOT* NEED TO DESCRIBE THESE LINES (your free to figure it out though)
W = 0.1;    % Window size
tic;
for mm = 1:ceil(tot_samples/Fs/W)
    % PAUSE UNTIL NEXT FRAME
    xlim([(mm-1)*W+[0 W]]); % Set limits of plot
    tm = toc;                        % Check current time
    if mm*W < tm, disp(['Warning: Visualization is ' num2str(mm*W-tm)  's behind']); end
    drawnow; pause(mm*0.1-tm);       % Synchronize with clock
end
% =======



%%
% =========================================
% SUPPORTING FUNCTIONS FOUND BELOW
% Add comments appropriately below
% =========================================


function x = key_to_note(A, key, dur, fs)
% key_to_note: Converts piano key to a sinusoidal waveform
%
% Input Args:
%     A: complex amplitude
%   key: number of the note on piano keyboard
%   dur: duration of each note (in seconds)
%    fs: A scalar sampling rate value
%
% Output:
%     x: sinusoidal waveform of the note
    
    %  Calculate the number of samples, creates a vector, and converts the
    %  key to a frequency.
    N    = floor(dur*fs);
    t    = (0:(N-1)).'/fs;
    freq = (440/32)*2^((key-9)/12); 
    
    %  ===> Creates a complex sinuosoid, taking the real part for our
    %  waveform audio
    x    = real(A*exp(1j*2*pi*freq*t));   


end


function x = build_song(As, keys, durs, fs)
% build_song:  Creates audio from our note inputs
%
% Input Args:
%	  As: A length-N array of complex amplitudes for building notes
%	keys: A length-N array of key numbers (which key on a keyboard) for building notes
%   durs: A length-N array of durations (in seconds) for building notes
%     fs: A scalar sampling rate value
%
% Output Args: 
%      x: A length-(N*fs) length raw audio signal
%
    %  Creates zeroes for the samples of the audio
    x = zeros(ceil(sum(durs)*fs), 1);      
    for k = 1:length(keys) 
        
        %  Generates a note waveform, finds start point of the note based
        %  on sum of other notes prior
        note       = key_to_note(As(k), keys(k), durs(k), fs);  
        start_time = sum(durs(1:k-1));
        
        %  Creates start time and duration to make sample indices
        n1         = floor(start_time*fs) + 1;               
        n2         = floor(start_time*fs) + floor(durs(k)*fs);
        x(n1:n2)   = x(n1:n2) + note;               
        
    end

end

