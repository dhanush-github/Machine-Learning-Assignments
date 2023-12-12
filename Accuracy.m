%Creating a function to calculate accuracy against K-values


function[acc] = Accuracy(distance,ytrain,ytest)

[d,indi] = sort(distance); %d returns sorted distance matrix in ascending order
% indi returns indices of those sorted distances corresponding to the
% unsorted distance matrix
                           
                           
total_rows = height(distance); 
total_columns = width(distance);
acc = zeros(1,total_rows);
for k = 1:total_rows % iterating for different k values 
    
    
    closest_distance = d(1:k,:);  % returns closest distances for a k value
    
    closest_indices = indi(1:k,:); % returns corresponding closest distance indices 
    
    k_indices = ytrain(closest_indices);  %retrieving those closent indices values from y train
   
    predicted_values = mode(k_indices); %Takes the target values that appeared the most times 
   
    %Difference between our predicted or classified values with actual y test values  
    check = predicted_values' - ytest;
    
    correctly_classified = sum(check ==0);  %returns only correctly classified values 
    %Calculates the accuracy which is the ratio of no. of correct
    %predictions to the total number of predictions
    
    acc(k) = correctly_classified/total_columns; 
end