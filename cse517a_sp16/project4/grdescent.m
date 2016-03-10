function [w]=grdescent(func,w0,stepsize,maxiter,tolerance)
% function [w]=grdescent(func,w0,stepsize,maxiter,tolerance)
%
% INPUT:
% func function to minimize
% w0 = initial weight vector 
% stepsize = initial gradient descent stepsize 
% tolerance = if norm(gradient)<tolerance, it quits
%
% OUTPUTS:
% 
% w = final weight vector
%

if nargin<5,tolerance=1e-02;end;

w1=w0;
flag=1;
while (flag==1)
[loss1,gradient1]=func(w1);
w2=w1-stepsize*gradient1;
 if(norm(gradient1)<tolerance)
    flag=0;
 end 
 if((w2-w1)'*(w2-w1)<tolerance)
     flag=0;
 end
[loss2,gradient2]=func(w2);
    if loss2<loss1
       stepsize=1.01*stepsize; 
    elseif loss2>loss1
        stepsize=0.5*stepsize;
    end
w1=w2;
end
w=w1;