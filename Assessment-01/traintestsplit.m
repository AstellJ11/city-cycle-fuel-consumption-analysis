% Section III: Task 6:
% Shuffle data and split into training and testing sets

% Shuffling data

for l = 1:length(rawCol6)
    carShuffle = randi(length(rawCol6));        % Generates random numbers from the changing length of the array
    accShuffled(l,1) = rawCol6(carShuffle,1);       % Take the random number row and insert into into the new variable
    mpgShuffled(l,1) = cleanCol1(carShuffle,1);
    hpShuffled(l,1) = cleanCol4(carShuffle,1);
    weightShuffled(l,1) = rawCol5(carShuffle,1);
    rawCol6(carShuffle) = [];                       % Take the random number that was generated out of the existing array
    cleanCol1(carShuffle) = [];
    cleanCol4(carShuffle) = [];
    rawCol5(carShuffle) = [];
end

% Splitting data

trainingLoop = round((length(dataD) - 1) * 0.7);        % Getting the size required for the training/testing loops
testingLoop = round((length(dataD) - 1) * 0.3);

for k = 1:trainingLoop
    accTrainingData{k,1} = accShuffled(k,1);        % Creates a new cell array of size 284x1 populated with 
    mpgTrainingData{k,1} = mpgShuffled(k,1);
    hpTrainingData{k,1} = hpShuffled(k,1);
    weightTrainingData{k,1} = weightShuffled(k,1);
end

accTrainingData = cell2mat(accTrainingData);        % Conversion
mpgTrainingData = cell2mat(mpgTrainingData);
hpTrainingData = cell2mat(hpTrainingData);
weightTrainingData = cell2mat(weightTrainingData);

k = trainingLoop + 1;
for m = 1:testingLoop
    accTestingData{m,1} = accShuffled(k,1);    % Creates a new cell array of size 284x1
    mpgTestingData{m,1} = mpgShuffled(k,1);
    hpTestingData{m,1} = hpShuffled(k,1);
    weightTestingData{m,1} = weightShuffled(k,1);
    k = k + 1;
end

accTestingData = cell2mat(accTestingData);      % Conversion 
mpgTestingData = cell2mat(mpgTestingData);
hpTestingData = cell2mat(hpTestingData);
weightTestingData = cell2mat(weightTestingData);



    
    