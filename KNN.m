% Reading the given data(csv file) into matlab using readmatrix function.
datas = readmatrix('Data.csv');
% Getting training and testing data from the Splitting function.
[X_train,Y_train,X_test,Y_test] = Splitting(datas);
% Getting Distances calculated between X_train and X_test from the two
% distance functions.
distances_Man = Manhattan(X_train,X_test);
distances_Min = Minkowski(X_train,X_test);

% Getting the accuracy calculated between our predicted value and Y_test
% for the two different distance measures.
Accuracy_Manhattan= Accuracy(distances_Man,Y_train,Y_test);
Accuracy_Minkowski = Accuracy(distances_Min,Y_train,Y_test);

rows = height(X_train);
value_k = (1:rows);
%plotting the graph between accuracy and 
myplot(value_k,Accuracy_Manhattan);
figure;
myplot(value_k,Accuracy_Minkowski);






