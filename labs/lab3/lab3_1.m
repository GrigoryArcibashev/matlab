N = input("Enter the size of the square matrix: ");
while N ~= round(N) || N < 3
    fprintf("Enter the integer greater than 3!\n")
    N = input("Enter the size of the square matrix: ");
end

matrix = zeros(N, N);
matrix([1 2], 1:1:N) = randn(2, N);
for s = 3:N
    matrix(s, 1:1:N) = matrix(s-1, 1:1:N).*matrix(s-2, 1:1:N);
end

fprintf("matrix determinant = %f\n", det(matrix))

[vec, val] = eig(matrix);
vec = vec';
val = diag(val)';

fprintf("eigenvalues : eigenvectors\n")
szval = size(val);
for i = 1:1:szval(2)
    fprintf("%11f : [ ", val(i))
    szvec = size(vec);
    for j = 1:1:szvec(2)
        fprintf("%f ", vec(i, j))
    end
    fprintf("]\n")
end