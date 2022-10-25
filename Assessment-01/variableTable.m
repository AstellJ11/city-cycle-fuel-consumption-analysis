% Section II: Task 3:
% Statistics Table

%MPG = sortCol1;
%Acceleration = sortCol6;
%Horsepower = sortCol4;
%Weight = sortCol5;

Variable = {'MPG'; 'Acceleration'; 'Horsepower'; 'Weight'};
Mean = [mpgMean; accMean; hpMean; weightMean];
Median = [mpgMedian; accMedian; hpMedian; weightMedian];
Min = [mpgMin; accMin; hpMin; weightMin];
Max = [mpgMax; accMax; hpMax; weightMax];
SD = [mpgSD; accSD; hpSD; weightSD];

T = table(Variable, Mean, Median, Min, Max);    % Creation of table
T.('Standard Deviation') = SD       % Allow the use of two words in the table heading
