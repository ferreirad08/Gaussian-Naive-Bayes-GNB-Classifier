# Gaussian Naive Bayes (GNB) Classifier

[![View Gaussian Naive Bayes (GNB) Classifier on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/76355-gaussian-naive-bayes-gnb-classifier)

Function 
1. predict_gnb

Description 
1. Returns the estimated labels of one or multiple test instances and the accuracy of the estimates.

Examples using Iris Data Set

    load fisheriris
    X = meas;
    Y = species;
    Xnew = [min(X);mean(X);max(X)];
    label = predict_gnb(X,Y,Xnew)
    
    label =
    
        'setosa'
        'versicolor'
        'virginica'
