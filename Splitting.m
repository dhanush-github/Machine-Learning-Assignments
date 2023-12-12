% Creating a function for splitting the data into 90% training data and 10%
% testing data




function[X_train,Y_train,X_test,Y_test]=Splitting(datas)

x = datas(:,1:end-1); %Features
y = datas(:,end);     % Target or Labels

x_standardise = normalize(x);  % Returns the z-score of a data in x with 
                               %mean 0 and standard deviation 1.
s = size(datas,1);
seed = 100;
rng(seed);  % controlls random number generation, so that we generate same
            %random numbers every time we run the program.
t = randperm(s);
per = 0.9;

Training_index = t(1:round(per*s)); % index for training data which is 90% of data
Testing_index = t(round(per*s)+1:end); % index for testing data which is 10% of data


X_train = x_standardise(Training_index,:); %Training data with all the features
Y_train = y(Training_index,:); %corresponding Target or Labels for training data


X_test = x_standardise(Testing_index,:); %Testing data
Y_test = y(Testing_index,:); % corresponding Target or Labels
