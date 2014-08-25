function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
%for each point 
for i=1:size(X,1)
    best_min_val = 1000000;
    best_min_indx = 1;
    for j=1:K
        curr_min = sum( (X(i,:) - centroids(j,:)).^2);
        if curr_min < best_min_val;
            best_min_val = curr_min;
            best_min_indx = j;
         end
    end
    idx(i,1) = best_min_indx;
end






% =============================================================

end

