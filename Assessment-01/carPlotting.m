% Section II: Task 4:
% Plotting

dir = 'plots';
if exist(dir)  
else
    mkdir 'dir'       % Create the plot folder in doesn't already exist
end

% a)
boxplot(cleanCol1);     % Box plot of MPG
xlabel('All Vehicles');
ylabel('MPG');
title('MPG for All Vehicles');
print('plots/mpgBoxPlot', '-dpng');

% b)
boxplot(rawCol6);       % Box plot of Acc
xlabel('All Vehicles');
ylabel('Acceleration');
title('Acceleration for All Vehicles');
print('plots/accBoxPlot', '-dpng');

% c)
boxplot(cleanCol4);     % Box plot of hp
xlabel('All Vehicles');
ylabel('Horsepower');
title('Horsepower for All Vehicles');
print('plots/hpBoxPlot', '-dpng');

% d)
boxplot(rawCol5);       % Box plot of weight
xlabel('All Vehicles');
ylabel('Weight');
title('Weight for All Vehicles');
print('plots/weightBoxPlot', '-dpng');

% e)
scatter(rawCol6, cleanCol1)     % Scatter graph of acc vs MPG
xlabel('Acceleration');
ylabel('MPG');
title('Scatter graph of Acceleration vs MPG');
print('plots/accVmpgScatter', '-dpng');

eSxy = 0;
for j = 1:length(rawCol6)
   eSxy = eSxy + ((rawCol6(j) - accMean) * (cleanCol1(j) - mpgMean));       % Sxy
end

eSxx = 0;
for j = 1:length(rawCol6)
   eSxx = eSxx + ((rawCol6(j) - accMean)^2);        % Sxx
end

eSyy = 0;
for j = 1:length(rawCol6)
   eSyy = eSyy + ((cleanCol1(j) - mpgMean)^2);      % Syy
end

ePMCC = eSxy / sqrt((eSxx * eSyy));      % PMCC for acc vs MPG

% f)
scatter(cleanCol4, cleanCol1)      % Scatter graph of hp vs MPG
xlabel('Horsepower');
ylabel('MPG');
title('Scatter graph of Horsepower vs MPG');
print('plots/hpVmpgScatter', '-dpng');

fSxy = 0;
for j = 1:length(cleanCol4)
   fSxy = fSxy + ((cleanCol4(j) - hpMean) * (cleanCol1(j) - mpgMean));
end

fSxx = 0;
for j = 1:length(cleanCol4)
   fSxx = fSxx + ((cleanCol4(j) - hpMean)^2);
end

fSyy = 0;
for j = 1:length(cleanCol4)
   fSyy = fSyy + ((cleanCol1(j) - mpgMean)^2);
end

fPMCC = fSxy / sqrt((fSxx * fSyy));      % PMCC for hp vs MPG

% g)
scatter(rawCol5, cleanCol4)      % Scatter graph of weight vs hp
xlabel('Weight');
ylabel('Horsepower');
title('Scatter graph of Weight vs Horsepower');
print('plots/weightVhpScatter', '-dpng');

gSxy = 0;
for j = 1:length(rawCol5)
   gSxy = gSxy + ((rawCol5(j) - weightMean) * (cleanCol4(j) - hpMean));
end

gSxx = 0;
for j = 1:length(rawCol5)
   gSxx = gSxx + ((rawCol5(j) - weightMean)^2);
end

gSyy = 0;
for j = 1:length(rawCol5)
   gSyy = gSyy + ((cleanCol4(j) - hpMean)^2);
end

gPMCC = gSxy / sqrt((gSxx * gSyy));      % PMCC for weight vs hp

% h)
nbins = 25;      % Set the amount of bars needed
histogram(cleanCol1, nbins)     % Density plot of MPG
xlabel('MPG');
ylabel('Frequency');
title('Density plot of MPG');
print('plots/mpgDensityPlot', '-dpng');

% i)
nbins = round(accMax) + 1;    
histogram(rawCol6, nbins)     % Density plot of acc
xlabel('Acceleration');
ylabel('Frequency');
title('Density plot of Acceleration');
print('plots/accDensityPlot', '-dpng');

% j)
nbins = 25; 
histogram(cleanCol4, nbins)     % Density plot of hp
xlabel('Horsepower');
ylabel('Frequency');
title('Density plot of Horsepower');
print('plots/hpDensityPlot', '-dpng');

% k)
nbins = 25;  
histogram(rawCol5, nbins)     % Density plot of weight
xlabel('Weight');
ylabel('Frequency');
title('Density plot of Weight');
print('plots/weightDensityPlot', '-dpng');

close(figure(1))








