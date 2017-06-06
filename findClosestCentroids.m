function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
t=zeros(K,1);
a=zeros(size(X,1),1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
for i=1:size(X,1)
  for j=1:size(centroids,1)
    t(j)=(sum(((X(i,:)-centroids(j,:)).^2)))^0.5;
    
  end
  [a(i),idx(i)]=min(t);
  %t=zeros(K,1);
end

    





%for j=1:size(X,1)
 % for i=1:K
  %  t(i)=(((X(j,1)-centroids(i,1))^2)+(X(j,2)-centroids(i,2))^2)^0.5;
  %end
   %   [a(j),idx(j)]=min(t);
  %end

    
    
    
  

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

