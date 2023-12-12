% This function calculates the Manhattan distance bewtween the training data set
% and the testing data set

function [distance] = Minkowski(training,testing)
p = 3;
N = size(training,1);
dists = zeros(N,1);
row = height(testing);
distance  = zeros(N,row);
for j = 1:row
    for idx = 1:N
        dists(idx) = nthroot(sum(abs((training(idx,:) - testing(j,:))).^p),p);
    distance(:,j) = dists;
    
    end
end
end