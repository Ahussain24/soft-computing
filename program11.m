X = [0 0;
     0 1;
     1 0;
     1 1];

targets = [0; 0; 0; 1];

w = rand(size(X, 2) + 1, 1); 

lr = 0.1;

num_epochs = 100;


for epoch = 1:num_epochs
    for i = 1:size(X, 1)
        X_with_bias = [X(i, :) 1]; 
       
        y = X_with_bias * w >= 0; 
       
        w = w + lr * (targets(i) - y) * X_with_bias';
    end
end

output = [X ones(size(X, 1), 1)] * w >= 0; 

disp('Trained weights and bias):');
disp(w');

disp('Outputs of the perceptron:');
disp(output');
disp('Target values:');
disp(targets');
