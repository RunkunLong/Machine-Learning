function [w,b]=naivebayesCL(x,y);
% function [w,b]=naivebayesCL(x,y);
%
% Implementation of a Naive Bayes classifier
% Input:
% x : n input vectors of d dimensions (dxn)
% y : n labels (-1 or +1)
%
% Output:
% w : weight vector
% b : bias (scalar)
%

[d,n]=size(x);
%% fill in code here
[posprob,negprob] = naivebayesPXY(x,y)
w=log(posprob)-log(negprob);
[pos,neg] = naivebayesPY(x,y)
b=log(pos/neg);


