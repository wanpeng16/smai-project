function K = rbf(coord,sig)

%function K = rbf(coord,sig)
%
% Computes an rbf kernel matrix from the input coordinates
%
%INPUTS
% coord =  a matrix containing all samples as rows
% sig = sigma, the kernel width; squared distances are divided by
%       squared sig in the exponent
%
%OUTPUTS
% K = the rbf kernel matrix ( = exp(-1/(2*sigma^2)*(coord*coord')^2) )
%
%


n=size(coord,1);
K=coord*coord'/sig^2;
d=diag(K);
K=K-ones(n,1)*d'/2;
K=K-d*ones(1,n)/2;
K=exp(K);
