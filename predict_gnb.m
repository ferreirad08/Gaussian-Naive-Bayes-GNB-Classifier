function label = predict_gnb(X,Y,Xnew)
%Gaussian Naive Bayes (GNB) Classifier
%
%Author: David Ferreira - Federal University of Amazonas
%Contact: ferreirad08@gmail.com
%
%predict_gnb
%
%Syntax
%1. label = predict_gnb(X,Y,Xnew)
%
%Description 
%1. Returns the estimated labels of one or multiple test instances.
%
%X is an M-by-N matrix, with M instances of N features. 
%Y is an M-by-1 matrix, with respective M labels to each training instance. 
%Xnew is an P-by-N matrix, with P instances of N features to be classified.
%
%Examples
%1.
%     load fisheriris
%     X = meas;
%     Y = species;
%     Xnew = [min(meas);mean(meas);max(meas)];
%     label = predict_gnb(X,Y,Xnew)
%     label = 
%         'setosa'
%         'versicolor'
%         'virginica'

[C,~,Y] = unique(Y,'stable');
class_list = 1:length(C);

P = size(Xnew,1);
label = zeros(P,1);
for inst = 1:P
    % Class prior probability
    probability = histc(Y,class_list)/length(Y);
    for j = class_list
        A = X(Y==j,:);
        S = std(A);
        
        % Probability density function (PDF) of the normal distribution
        gauss = 1./(S.*sqrt(2.*pi)).*exp(-1/2.*((Xnew(inst,:)-mean(A))./S).^2);
        
        % Product
        probability(j) = probability(j)*prod(gauss);
    end
    
    % Sort the probabilities in descending order and check the estimated label
    [~,I] = sort(probability,'descend');
    label(inst) = I(1);
end

label = C(label);
end
