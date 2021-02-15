function [E, U, Ns, a, C] = loocv_vector(A, f)

I = eye(size(A));     % Identity matrix
Y = A\[I, f];         % C and a (alpha) side by side
C = Y(:, 1:(end-1));  % Inverse of A
a = Y(:, end);        % Interpolation coefficients (alpha)
E = a./diag(C);       % Cross-validation vector
U = E.*a;             % “Cross-validation” of norms
Ns = a'*f;            % Squared native space norm of s

end