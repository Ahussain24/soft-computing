
num_samples = 1000;

uniform_numbers = rand(1, num_samples);

mu = 0; 
sigma = 1; 
normal_numbers = mu + sigma * randn(1, num_samples);

% Plot histograms
subplot(2, 1, 1);
histogram(uniform_numbers, 20, 'Normalization', 'probability');
title('Uniform Distribution');
xlabel('Value');
ylabel('Probability');
grid on;

subplot(2, 1, 2);
histogram(normal_numbers, 20, 'Normalization', 'probability');
title('Normal Distribution');
xlabel('Value');
ylabel('Probability');
grid on;


sgtitle('Random Numbers Distribution');
