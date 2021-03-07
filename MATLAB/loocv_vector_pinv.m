function [E, U, Ns2, a, C] = loocv_vector_pinv(A, f)

C = pinv(A);          % “Stable” inverse of ‘A’
a = C*f;              % Interpolation coefficients (alpha)
E = a./diag(C);       % Cross-validation vector
U = E.*a;             % “Cross-validation” of norms
Ns2 = a'*f;           % Squared native space norm of ‘s’

end
