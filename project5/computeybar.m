function ybar=computeybar(xTe)
% function [ybar]=ybar(xTe);
% 
% computes the expected label 'ybar' for a set of inputs x
% generated from two standard Normal distributions (one offset by OFFSET in
% both dimensions.)
%
% INPUT:
% xTe | a 2xn matrix of column input vectors
% 
% OUTPUT:
% ybar | a 1xn vector of the expected label ybare(x)
%

global OFFSET;

[~,n]=size(xTe);
ybar=zeros(1,n);

% Feel free to use the following function to compute p(x|y)
normpdf=@(x,mu,sigma)   exp(-0.5 * ((x - mu)./sigma).^2) ./ (sqrt(2*pi) .* sigma);

pxy1 = normpdf(xTe,0,1);
pxy2 = normpdf(xTe,OFFSET,1);
pxy1=prod(pxy1);
pxy2=prod(pxy2);

py1 = 0.5; py2 = 0.5;

py1x=pxy1.*py1./(pxy1.*py1 + pxy2.*py2);
py2x=pxy2.*py2./(pxy1.*py1 + pxy2.*py2);


ybar = py1x+py2x*2;


