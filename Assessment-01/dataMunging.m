% Section I: Task 2:
% Data Munging

dataD = str2double(dataF);      % Converts cell array to double array

% Column 1 (MPG) Cleaning

rawCol1 = dataD(2:407,1);       % Extracts the data from col 1 (MPG) excluding the header
Col1NaN = isnan(rawCol1);       % Pulls out 1 values where NaN's are located
rawCol1(Col1NaN) = 0;       % Repalces all the NaN values with the value 0 to allow the sum to be calculated

totalCol1 = 0;
for i = 1:length(rawCol1)
        totalCol1 = totalCol1 + rawCol1(i);      % Total sum of column 1 (MPG)
end

c = 0;
for i = 1:length(Col1NaN)
    if(Col1NaN(i) == 1)
        c = c + 1;      % Sums the number of NaNs in column 1 (MPG)
    end
end

Col1DMMean = totalCol1 / (length(rawCol1) - c);     % Col1DMMean is the (mean value - NaNs) that will be replacing the NaNs
cleanCol1 = rawCol1;
cleanCol1(Col1NaN) = Col1DMMean;        % Replaces the NaNs with the new calculated mean

dataD(2:407,1) = cleanCol1;     % Applies the new column 1 data into the original 

% Column 4 (Horsepower) Cleaning

rawCol4 = dataD(2:407,4);       % Extracts the data from col 4 (Horsepower) excluding the header
Col1NaN4 = isnan(rawCol4);       % Pulls out 1 values where NaN's are located
rawCol4(Col1NaN4) = 0;       % Repalces all the NaN values with the value 0 to allow the sum to be calculated

totalCol4 = 0;
for i = 1:length(rawCol4)
        totalCol4 = totalCol4 + rawCol4(i);      % Total sum of column 4 (Horsepower)
end

c2 = 0;
for i = 1:length(Col1NaN4)
    if(Col1NaN4(i) == 1)
        c2 = c2 + 1;      % Sums the number of NaNs in column 4 (Horsepower)
    end
end

Col4DMMean = totalCol4 / (length(rawCol4) - c2);     % Col4DMMean is the (mean value - NaNs) that will be replacing the NaNs
cleanCol4 = rawCol4;
cleanCol4(Col1NaN4) = Col4DMMean;        % Replaces the NaNs with the new calculated mean

dataD(2:407,4) = cleanCol4;     % Applies the new column 4 data into the original

