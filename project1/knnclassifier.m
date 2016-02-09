function preds=knnclassifier(xTr,yTr,xTe,k);
% function preds=knnclassifier(xTr,yTr,xTe,k);
%
% k-nn classifier 
%
% Input:
% xTr = dxn input matrix with n column-vectors of dimensionality d
% xTe = dxm input matrix with n column-vectors of dimensionality d
% k = number of nearest neighbors to be found
%
% Output:
%
% preds = predicted labels, ie preds(i) is the predicted label of xTe(:,i)
%


% output random result as default (you can erase this code)
[d,n]=size(xTe);
[d,ntr]=size(xTr);
if k>ntr,k=ntr;end;

%currently assigning random predictions
un=unique(yTr);
preds=un(ceil(rand(1,n)*length(un)));

%% fill in code here
[indices,dists]=findknn(xTr,xTe,k);
labelY=zeros(k,n);
preds=zeros(1,n); % store the predicted label
for i=1;n
    count=zeros(1,ntr); % store the label of the k-nearest vectors
    for j=1:k
        labelY(j,i)=yTr(indices(j,i));
        count(find(yTr==labelY(j,i)))=(find(yTr==labelY(j,i)))+1;
    end
    [MAX, Index]=max(count);
    preds(i)=Index;
end

    
    
