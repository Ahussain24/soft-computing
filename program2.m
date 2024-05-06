
function_values = zeros(1, 1001); 
function_values(501:end) = 1; 

x = linspace(-5, 5, 1001);


plot(x, function_values, 'LineWidth', 2);
title('Plot of f(x) = 0 if x <= 0, 1 if x > 0');
xlabel('x');
ylabel('f(x)');
grid on;
