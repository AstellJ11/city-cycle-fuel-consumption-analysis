% Section II: Task 3:
% Standard Deviation

% Column 1 (MPG) SD

for i = 1:length(cleanCol1)
        distance = (cleanCol1 - mpgMean).^2;      % Loop to find the distance between each number (xi - mu) all squared
end

mpgSDTotal = 0;
for i = 1:length(distance)
    mpgSDTotal = mpgSDTotal + distance(i);      % Sum of the distances
end

mpgSD = sqrt(mpgSDTotal/(length(cleanCol1)-1));    % Final SD calc. Use n-1 because of Bessel's correction 

% Column 6 (Acceleration) SD

for i = 1:length(rawCol6)
        distance = (rawCol6 - accMean).^2; 
end

accSDTotal = 0;
for i = 1:length(distance)
    accSDTotal = accSDTotal + distance(i);    
end

accSD = sqrt(accSDTotal/(length(rawCol6)-1)); 

% Column 4 (Horsepower) SD

for i = 1:length(cleanCol4)
        distance = (cleanCol4 - hpMean).^2;    
end

hpSDTotal = 0;
for i = 1:length(distance)
    hpSDTotal = hpSDTotal + distance(i);    
end

hpSD = sqrt(hpSDTotal/(length(cleanCol4)-1));  

% Column 5 (Weight) SD

for i = 1:length(rawCol5)
        distance = (rawCol5 - weightMean).^2; 
end

weightSDTotal = 0;
for i = 1:length(distance)
    weightSDTotal = weightSDTotal + distance(i); 
end

weightSD = sqrt(weightSDTotal/(length(rawCol5)-1));
