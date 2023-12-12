% function[out1,out2] = myfunctionname(in1,in2)

% This function calculates the Manhattan distance bewtween the training data set
% and the testing data set

% This function returns distance

% Each column of the output matrix distance corresponds to the distances
% calculated between a single instance in the testing dataset and all
% instances in training dataset.

% Therefore we will be having n columns corresponding to the n instances
% in the training dataset.

%(for eg. 1st column values in the output matrix distance represent distance 
% calculated between the 1st instance(1st data point) in the testing data
% and all the the instances in training data set).

function [distance] = Manhattan(training,testing)
N = size(training,1);
dists = zeros(N,1);
row = height(testing);
distance  = zeros(N,row);
for j = 1:row
    for idx = 1:N
        dists(idx) = sum(abs(training(idx,:) - testing(j,:)));
    distance(:,j) = dists;
    
    end
end
end

    
  

    