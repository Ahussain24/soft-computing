X = [0 0;
     0 1;
     1 0;
     1 1];

targets = [-1; -1; -1; 1]; 

w = rand(size(X, 2) + 1, 1); 

lr = 0.1;

num_epochs = 1000;

for epoch = 1:num_epochs
    for i = 1:size(X, 1)
  
        X_with_bias = [X(i, :) 1]; 
        
        y = X_with_bias * w;
        
        dw = lr * (targets(i) - y) * X_with_bias';
        w = w + dw;
    end
end


output = [X ones(size(X, 1), 1)] * w;


disp('Trained weights and bias):');
disp(w');

disp('Outputs of the Adaline:');
disp(output');
disp('Target values):');
disp(targets');
