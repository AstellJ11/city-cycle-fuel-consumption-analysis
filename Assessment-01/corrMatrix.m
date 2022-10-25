% Section II: Task 5:
% Correlation Matrix

% Already know:

%ePMCC = acc vs MPG
%fPMCC = hp vs MPG
%gPMCC = weight vs hp

% Need to calculate:

% Weight vs MPG

hSxy = 0;
for j = 1:length(rawCol5)
   hSxy = hSxy + ((rawCol5(j) - weightMean) * (cleanCol1(j) - mpgMean));
end

hSxx = 0;
for j = 1:length(rawCol5)
   hSxx = hSxx + ((rawCol5(j) - weightMean)^2);
end

hSyy = 0;
for j = 1:length(rawCol5)
   hSyy = hSyy + ((cleanCol1(j) - mpgMean)^2);
end

hPMCC = hSxy / sqrt((hSxx * hSyy));      % PMCC for weight vs MPG

% hp vs acc

jSxy = 0;
for j = 1:length(cleanCol4)
   jSxy = jSxy + ((cleanCol4(j) - hpMean) * (rawCol6(j) - accMean));
end

jSxx = 0;
for j = 1:length(cleanCol4)
   jSxx = jSxx + ((cleanCol4(j) - hpMean)^2);
end

jSyy = 0;
for j = 1:length(cleanCol4)
   jSyy = jSyy + ((rawCol6(j) - accMean)^2);
end

jPMCC = jSxy / sqrt((jSxx * jSyy));     % PMCC for hp vs acc

% Weight vs acc

kSxy = 0;
for j = 1:length(rawCol5)
   kSxy = kSxy + ((rawCol5(j) - weightMean) * (rawCol6(j) - accMean));
end

kSxx = 0;
for j = 1:length(rawCol5)
   kSxx = kSxx + ((rawCol5(j) - weightMean)^2);
end

kSyy = 0;
for j = 1:length(rawCol5)
   kSyy = kSyy + ((rawCol6(j) - accMean)^2);
end

kPMCC = kSxy / sqrt((kSxx * kSyy));      % PMCC for weight vs acc

