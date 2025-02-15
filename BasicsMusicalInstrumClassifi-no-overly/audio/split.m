[y, Fs] = audioread('Real-world_train_data/violin_9.flac');
pred_freq = 3;
for i = 1:ceil(length(y)/Fs*pred_freq)
    ind1 = (i-1)*Fs/pred_freq+1;
    ind2 = min(i*Fs/pred_freq, length(y));
    templ = y(ind1:ind2, 1);
    TFl = sum(~isfinite(templ));
    sumal = sum(abs(templ));
    if (TFl==0 && sumal > 30)
        audiowrite(sprintf('london_phill_dataset_multi/violin/more_violin_l1%d.wav', i), templ, Fs);
    end
    tempr = y(ind1:ind2, 2);
    TFr = sum(~isfinite(tempr));
    sumar = sum(abs(tempr));
    if (TFr==0 && sumar > 30)
        audiowrite(sprintf('london_phill_dataset_multi/violin/more_violin_r1%d.wav', i), tempr, Fs);
    end
end

[y, Fs] = audioread('violin_0.flac');
pred_freq = 2;
for i = 1:ceil(length(y)/Fs*pred_freq)
    ind1 = (i-1)*Fs/pred_freq+1;
    ind2 = min(i*Fs/pred_freq, length(y));
    templ = y(ind1:ind2, 1);
    TFl = sum(~isfinite(templ));
    sumal = sum(abs(templ));
    if (TFl==0 && sumal > 30)
        audiowrite(sprintf('london_phill_dataset_multi/violin/more_violin_l2%d.wav', i), templ, Fs);
    end
    tempr = y(ind1:ind2, 2);
    TFr = sum(~isfinite(tempr));
    sumar = sum(abs(tempr));
    if (TFr==0 && sumar > 30)
        audiowrite(sprintf('london_phill_dataset_multi/violin/more_violin_r2%d.wav', i), tempr, Fs);
    end
end