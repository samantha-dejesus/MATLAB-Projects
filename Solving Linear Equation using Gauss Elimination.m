% Gauss Elimination Method 

A = [1 2 2 1; 2 -4 1 -5; 2 1 -2 -4; -1 2 1 -2] % coefficient matrix
B = [17; 8 ;10 ;17] % source matrix
N = length(B) % number of elements 
X = zeros(N,1); % elements to find 

Aug = [A B] % to form augmented matrix

for j=1:N-1 % to make the row values 1
    for i=j+1:N % adjust row selection
        m= Aug(i,j)/Aug(j,j) % get the modifier variable
        Aug(i,:) = Aug(i,:) - m*Aug(j,:); 
    end     
end
Aug 
X(N) = Aug (N,N+1)/Aug (N,N);
for k=N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k,k+1:N)*X(k+1:N))/Aug(k,k);
end 
X 



