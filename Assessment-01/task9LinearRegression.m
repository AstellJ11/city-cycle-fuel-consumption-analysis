% Section III: Task 9:
% Performing linear regression between two variables

% Horsepower vs MPG
% x = hp, y = mpg

% Mean of training shuffled Data

hpTrainingTotal = 0;
for i = 1:length(hpTrainingData)
    hpTrainingTotal = hpTrainingTotal + hpTrainingData(i);  
end

hpTrainingMean = hpTrainingTotal / (length(hpTrainingData));

mpgTrainingTotal = 0;
for i = 1:length(mpgTrainingData)
    mpgTrainingTotal = mpgTrainingTotal + mpgTrainingData(i);   
end

mpgTrainingMean = mpgTrainingTotal / (length(mpgTrainingData));

% Sxy and Sxx 

task9Sxy = 0;
for j = 1:length(hpTrainingData)
   task9Sxy = task9Sxy + ((hpTrainingData(j) - hpTrainingMean) * (mpgTrainingData(j) - mpgTrainingMean));
end

tak9Sxx = 0;
for j = 1:length(hpTrainingData)
   tak9Sxx = tak9Sxx + ((hpTrainingData(j) - hpTrainingMean)^2);
end

% Training linear regression

task9W1 = task9Sxy / tak9Sxx;       % W1
task9W0 = mpgTrainingMean - (task9W1*hpTrainingMean);       % W0

task9y = task9W0 + (task9W1*hpTrainingData);        % Training linear regression equation

scatter (hpTrainingData,task9y, 'filled')
hold on
scatter (hpTrainingData, mpgTrainingData)
xlabel('Horsepower');
ylabel('MPG');
title('Scatter graph of Linear Regression on Training Data for Horsepower vs MPG');
print('plots/Task9LRTraining', '-dpng');
hold off

% Training least-square error

task9SSE = 0;
for k = 1:length(hpTrainingData)
   task9SSE = task9SSE + ((hpTrainingData(k) - task9y(k)).^2);      % Find SSE
end

task9MSE = task9SSE / length(hpTrainingData);        % Find MSE






% Testing linear regression

task10y = task9W0 + (task9W1*hpTestingData);     % Testing linear regression equation

scatter (hpTestingData,task10y, 'filled')
hold on
scatter (hpTestingData, mpgTestingData)
xlabel('Horsepower');
ylabel('MPG');
title('Scatter graph of Linear Regression on Testing Data for Horsepower vs MPG');
print('plots/Task10LRTesting', '-dpng');
hold off

% Testing least-square error

task10SSE = 0;
for k = 1:length(hpTestingData)
   task10SSE = task10SSE + ((hpTestingData(k) - task10y(k)).^2);      % Find SSE
end

task10MSE = task10SSE / length(hpTestingData);      % Find MSE

