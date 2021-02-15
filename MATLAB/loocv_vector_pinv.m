function [E, U, Ns, a, C] = loocv_vector_pinv(A, f)

I = eye(size(A));     % Identity matrix
C = pinv(A);          % Pseudoinverse of A
a = C*f;              % Interpolation coefficients (alpha)
E = a./diag(C);       % Cross-validation vector
U = E.*a;             % “Cross-validation” of norms
Ns = a'*f;            % Squared native space norm of s

end