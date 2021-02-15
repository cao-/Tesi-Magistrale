function [E, U, Ns, a, C] = loocv_vector(A, f)

I = eye(size(A));
Y = A\[I, f];
C = Y(:, 1:(end - 1));
a = Y(:, end);

E = a./diag(C);
U = E.*a;
Ns = a'*f;

end
