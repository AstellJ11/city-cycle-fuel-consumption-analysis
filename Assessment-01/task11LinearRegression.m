% Section III: Task 11:
% Performing linear regression between two variables

% Weight vs Horsepower
% x = weight, y = hp

% Mean of training shuffled Data

weightTrainingTotal = 0;
for i = 1:length(weightTrainingData)
    weightTrainingTotal = weightTrainingTotal + weightTrainingData(i);  
end

weightTrainingMean = weightTrainingTotal / (length(weightTrainingData));

hpTrainingTotal = 0;
for i = 1:length(hpTrainingData)
    hpTrainingTotal = hpTrainingTotal + hpTrainingData(i);   
end

hpTrainingMean = hpTrainingTotal / (length(hpTrainingData));

% Sxy and Sxx 

task11Sxy = 0;
for j = 1:length(weightTrainingData)
   task11Sxy = task11Sxy + ((weightTrainingData(j) - weightTrainingMean) * (hpTrainingData(j) - hpTrainingMean));
end

task11Sxx = 0;
for j = 1:length(weightTrainingData)
   task11Sxx = task11Sxx + ((weightTrainingData(j) - weightTrainingMean)^2);
end

% Training linear regression

task11W1 = task11Sxy / task11Sxx;        % W1
task11W0 = hpTrainingMean - (task11W1*weightTrainingMean);       %W0

task11y = task11W0 + (task11W1*weightTrainingData);     % Training linear regression equation

scatter (weightTrainingData,task11y, 'filled')
hold on
scatter (weightTrainingData, hpTrainingData)
xlabel('Weight');
ylabel('Horsepower');
title('Scatter graph of Linear Regression on Training Data for Weight vs Horsepower');
print('plots/Task11LRTraining', '-dpng');
hold off

% Training least-square error

task11SSE = 0;
for k = 1:length(weightTrainingData)
   task11SSE = task11SSE + ((weightTrainingData(k) - task11y(k)).^2);      % Find SSE
end

task11MSE = task11SSE / length(weightTrainingData);        % Find MSE






% Testing linear regression

task12y = task11W0 + (task11W1*weightTestingData);     % Testing linear regression equation

scatter (weightTestingData,task12y, 'filled')
hold on
scatter (weightTestingData, hpTestingData)
xlabel('Horsepower');
ylabel('MPG');
title('Scatter graph of Linear Regression on Testing Data for Horsepower vs MPG');
print('plots/Task12LRTesting', '-dpng');
hold off

% Testing least-square error

task12SSE = 0;
for k = 1:length(weightTestingData)
   task12SSE = task12SSE + ((weightTestingData(k) - task12y(k)).^2);      % Find SSE
end

task12MSE = task12SSE / length(weightTestingData);      % Find MSE

