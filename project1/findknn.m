function [indices,dists]=findknn(xTr,xTe,k);
% function [indices,dists]=findknn(xTr,xTe,k);
%
% Finds the k nearest neighbors of xTe in xTr.
%
% Input:
% xTr = dxn input matrix with n column-vectors of dimensionality d
% xTe = dxm input matrix with n column-vectors of dimensionality d
% k = number of nearest neighbors to be found
% 
% Output:
% indices = kxm matrix, where indices(i,j) is the i^th nearest neighbor of xTe(:,j)
% dists = Euclidean distances to the respective nearest neighbors
%

% output random results, please erase this code
[d,ntr]=size(xTr);
[d,nte]=size(xTe);
indices=ceil(rand(k,nte)*ntr);% generate a k*nte matrix whose elements are random integer 
                              % numbers in[1,ntr]
dists=rand(k,nte);
if k>ntr,k=ntr;end;

%% fill in code here
Dist=l2distance(xTr,xTe);% ntr*nte distance matrix
[Temp1,Temp2]=sort(Dist,1);
indices=Temp2(1:k,1:nte);
dists=Temp1(1:k,1:nte);
	
%%	%
	
