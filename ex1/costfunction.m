function J=costfunction(X,y,theta)

m=size(X,1); % number of rows
predictions=X*theta; 
sqrerrors=(predictions-y).^2;

J=1/(2*m)*sum(sqrerrors);