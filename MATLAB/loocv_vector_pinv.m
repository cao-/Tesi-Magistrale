function [E, U, Ns, a, C] = loocv_vector_pinv(A, f)

I = eye(size(A));
C = pinv(A);
a = C*f;

E = a./diag(C);
U = E.*a;
Ns = a'*f;

end
