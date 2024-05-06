
function output = tanh_function(x)
    output = (exp(x) - exp(-x)) ./ (exp(x) + exp(-x));
end

x = linspace(-5, 5, 1001);
function_values = tanh_function(x);


plot(x, function_values, 'LineWidth', 2);
title('Plot of f(x) = (exp(x) - exp(-x)) / (exp(x) + exp(-x))');
xlabel('x');
ylabel('f(x)');
grid on;
