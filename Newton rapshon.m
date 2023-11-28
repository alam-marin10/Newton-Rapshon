% Define the function and its derivative
f = @(x) x^2 - 2;
f_prime = @(x) 2*x;

% Set initial guess, tolerance, and maximum iterations
x = 1.5;
tolerance = 1e-6;
max_iterations = 100;

fprintf('Starting Newton-Raphson method with initial guess x = %f\n', x);

% Newton-Raphson method iteration
for iteration = 1:max_iterations
    x = x - f(x) / f_prime(x);

    % Check for convergence
    if abs(f(x)) <= tolerance
        fprintf('Root found at x = %f after %d iterations\n', x, iteration);
        break;
    end
end

% Check if the method did not converge
if abs(f(x)) > tolerance
    fprintf('Newton-Raphson method did not converge within the specified number of iterations\n');
end