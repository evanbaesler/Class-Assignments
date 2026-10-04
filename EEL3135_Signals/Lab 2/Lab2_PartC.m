    f_gt=??? ;
    SignalGT=A*cos(2*pi*f_gt*t);
        
        for N=1:length(f)
            SignalEnergy(N)=??? SignalGT ??? TemplateDataBase(N,:) ??;
        end 
    
    figure 
    stem(f,SignalEnergy)
    grid on 
    title('Comparing Signals with Real Numbers')