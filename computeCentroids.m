function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);
l1=zeros(K,n);
l2=zeros(K);
m1=0;
m2=0;
n1=0;
n2=0;
y = accumarray(idx(:),1);
% You need to return the following variables correctly.
centroids = zeros(K, n);
for i=1:m
  for j=1:K
    for k=1:n
      if idx(i)==j
    l1(j,k)=l1(j,k)+X(i,k);
    %l2(j)=l2(j)+X(i,2);  
  %else if idx(i)==2
   % m1=m1+X(i,1);
    %m2=m2+X(i,2);
  %else
   % n1=n1+X(i,1);
    %n2=n2+X(i,2);
  end
end
end
end



centroids=l1(1,:)/y(1);
for j=2:K
  centroids=[centroids;l1(j,:)/y(j)];
end


    
    
    


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%








% =============================================================


end

