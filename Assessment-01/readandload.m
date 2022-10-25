% Section I: Task1: 
% Read and load the dataset

clc
clear;
format shortG

filename = 'car_data.csv';
fid = fopen(filename, 'r');      % Opens the file and assigns a integer file identifier

formatSpec = "%[^=]=%[^;]; ";       % Tells the following fscanf fuction what format to match
read = fscanf(fid, formatSpec);     % Reads to data from the open text file into a char array

readS = strsplit(read,{',','\r'});       % Splits the data at every comma or return value

row=3664;
readS(:,row)=[];        % Needed to remove the blank array created at row 3664 as is split at return function causing a blank cell to be created

data = reshape(readS,[9,407]);      % Turns the cell vector into the correctly sized 9x407 matrix
dataF = data';        % Transpose to get data in correct orientation

