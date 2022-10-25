% Section II: Task 3:
% Bubble Sorting the data

sortCol1 = cleanCol1; % MPG 
sortCol6 = dataD(2:407,6); %Acc
sortCol4 = cleanCol4; % HP
sortCol5 = dataD(2:407,5); % Weight

C = numel(sortCol1);        % Find the number of elements in the array
for j = 0 : C-1
    for i = 1: C-j-1
        if sortCol1(i)>sortCol1(i+1)        % Compare two positions next to each other
            temp = sortCol1(i);
            sortCol1(i) = sortCol1(i+1);
            sortCol1(i+1) = temp;       % If the value is less swap the positions
        end
    end
end


C = numel(sortCol6);
for j = 0 : C-1
    for i = 1: C-j-1
        if sortCol6(i)>sortCol6(i+1)
            temp = sortCol6(i);
            sortCol6(i) = sortCol6(i+1);
            sortCol6(i+1) = temp;
        end
    end
end


C = numel(sortCol4);
for j = 0 : C-1
    for i = 1: C-j-1
        if sortCol4(i)>sortCol4(i+1)
            temp = sortCol4(i);
            sortCol4(i) = sortCol4(i+1);
            sortCol4(i+1) = temp;
        end
    end
end


C = numel(sortCol5);
for j = 0 : C-1
    for i = 1: C-j-1
        if sortCol5(i)>sortCol5(i+1)
            temp = sortCol5(i);
            sortCol5(i) = sortCol5(i+1);
            sortCol5(i+1) = temp;
        end
    end
end

