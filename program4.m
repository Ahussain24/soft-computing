
function output = sigmoid(x)
    output = 1 ./ (1 + exp(-x));
end

x = linspace(-10, 10, 1001);

function_values = sigmoid(x);

plot(x, function_values, 'LineWidth', 2);
title('Plot of f(x) = 1/(1 + exp(-x))');
xlabel('x');
ylabel('f(x)');
grid on;
