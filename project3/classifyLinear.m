function preds = classifyLinear(x,w,b);
% function preds=classifyLinear(x,w,b);
%
% Make predictions with a linear classifier
% Input:
% x : n input vectors of d dimensions (dxn)
% w : weight vector
% b : bias
%
% Output:
% preds: predictions
%

%% fill in code here
% if no bias is given, set it to zero
if nargin<3,
	b=0;
end;

%% fill in code here
[d,n]=size(x);
B=ones(1,n);
X=[x ; B ]; 
W=[w;b];
preds=sign(W'*X);

