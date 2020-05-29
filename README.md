# Gaussian Naive Bayes (GNB) Classifier

Function 
1. predict_gnb

Description 
1. Returns the estimated labels of one or multiple test instances.

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
