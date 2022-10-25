% Section II: Task 3:
% Median, Min and Max

% Median Calculations

medLength = length(sortCol1);
i = (medLength+1)/2;        % Number of elements + 1
mpgMedian = (sortCol1(floor(i)) + sortCol1(ceil(i))) /2;        % Rounds if odd median value

medLength = length(sortCol6);
i = (medLength+1)/2;
accMedian = (sortCol6(floor(i)) + sortCol6(ceil(i))) /2;

medLength = length(sortCol4);
i = (medLength+1)/2;
hpMedian = (sortCol4(floor(i)) + sortCol4(ceil(i))) /2;

medLength = length(sortCol5);
i = (medLength+1)/2;
weightMedian = (sortCol5(floor(i)) + sortCol5(ceil(i))) /2;

% Min

mpgMin = sortCol1(1);       % Looks for the first value in the ordered array
accMin = sortCol6(1);
hpMin = sortCol4(1);
weightMin = sortCol5(1);

% Max

maxLength = length(sortCol1);       % Looks for the final value in the ordered array
mpgMax = sortCol1(maxLength);
accMax = sortCol6(maxLength);
hpMax = sortCol4(maxLength);
weightMax = sortCol5(maxLength);



