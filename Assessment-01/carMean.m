% Section II: Task 3:
% Mean

% Column 1 (MPG) Mean

rawCol1 = dataD(2:407,1);       % Extract the needed column

mpgTotal = 0;
for i = 1:length(rawCol1)
    mpgTotal = mpgTotal + rawCol1(i);      % Calculate the sum of column 1 (MPG)   
end

mpgMean = mpgTotal / (length(rawCol1));     % Mean

% Column 6 (Acceleration) Mean

rawCol6 = dataD(2:407,6);

accTotal = 0;
for i = 1:length(rawCol6)
    accTotal = accTotal + rawCol6(i);  
end

accMean = accTotal / (length(rawCol6));     % Mean

% Column 4 (Horsepower) Mean

rawCol4 = dataD(2:407,4);

hpTotal = 0;
for i = 1:length(rawCol4)
    hpTotal = hpTotal + rawCol4(i);   
end

hpMean = hpTotal / (length(rawCol4));       % Mean

% Column 5 (Weight) Mean

rawCol5 = dataD(2:407,5);

weightTotal = 0;
for i = 1:length(rawCol5)
    weightTotal = weightTotal + rawCol5(i);
end

weightMean = weightTotal / (length(rawCol5));       % Mean

