% Section III: Task 7:
% Performing linear regression between two variables

% Acceleration vs MPG
% x = acc, y = mpg

% Mean of training shuffled Data

accTrainingTotal = 0;
for i = 1:length(accTrainingData)
    accTrainingTotal = accTrainingTotal + accTrainingData(i);  
end

accTrainingMean = accTrainingTotal / (length(accTrainingData));     % Mean for Acceleration Training Data

mpgTrainingTotal = 0;
for i = 1:length(mpgTrainingData)
    mpgTrainingTotal = mpgTrainingTotal + mpgTrainingData(i);   
end

mpgTrainingMean = mpgTrainingTotal / (length(mpgTrainingData));     % Mean for MPG Training Data

% Sxy and Sxx 

task7Sxy = 0;
for j = 1:length(accTrainingData)
   task7Sxy = task7Sxy + ((accTrainingData(j) - accTrainingMean) * (mpgTrainingData(j) - mpgTrainingMean));
end

task7Sxx = 0;
for j = 1:length(accTrainingData)
   task7Sxx = task7Sxx + ((accTrainingData(j) - accTrainingMean)^2);
end

% Training linear regression

task7W1 = task7Sxy / task7Sxx;                               % W1
task7W0 = mpgTrainingMean - (task7W1*accTrainingMean);       % W0

task7y = task7W0 + (task7W1*accTrainingData);        % Training linear regression equation

scatter (accTrainingData,task7y, 'filled')
hold on
scatter (accTrainingData, mpgTrainingData)
xlabel('Acceleration');
ylabel('MPG');
title('Scatter graph of Linear Regression on Training Data for Acceleration vs MPG');
print('plots/Task7LRTraining', '-dpng');
hold off

% Training least-square error

task7SSE = 0;
for k = 1:length(accTrainingData)
   task7SSE = task7SSE + ((accTrainingData(k) - task7y(k)).^2);      % Find SSE
end

task7MSE = task7SSE / length(accTrainingData);






% Testing linear regression

task8y = task7W0 + (task7W1*accTestingData);     % Testing linear regression equation

scatter (accTestingData,task8y, 'filled')
hold on
scatter (accTestingData, mpgTestingData)
xlabel('Acceleration');
ylabel('MPG');
title('Scatter graph of Linear Regression on Testing Data for Acceleration vs MPG');
print('plots/Task8LRTesting', '-dpng');
hold off

% Testing least-square error

task8SSE = 0;
for k = 1:length(accTestingData)
   task8SSE = task8SSE + ((accTestingData(k) - task8y(k)).^2);      % Find SSE
end

task8MSE = task8SSE / length(accTestingData);       % Find MSE

