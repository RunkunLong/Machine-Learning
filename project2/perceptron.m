function w=perceptron(x,y);
% function w=perceptron(x,y);
%
% Implementation of a Perceptron classifier
% Input:
% x : n input vectors of d dimensions (dxn)
% y : n labels (-1 or +1)
%
% Output:
% w : weight vector
%

[d,n]=size(x);
w=zeros(d,1);

%% fill in code here
    for iterator =1:100
        m=0;
        r=randperm(n);%%randomize the order of input data
        for j=1:n
            if (y(r(j))*(w'*x(:,r(j)))<=0)
                w = perceptronUpdate(x(:,r(j)),y(r(j)),w);
                m=m+1;
            end
        end
        if m==0
            break;
        end
    end


