X = [0 0;
     0 1;
     1 0;
     1 1];

targets = [-1; -1; -1; 1];

w1 = rand(size(X, 2) + 1, 1); 
w2 = rand(size(X, 2) + 1, 1); 

lr = 0.1;

num_epochs = 500;

for epoch = 1:num_epochs
    for i = 1:size(X, 1)
  
        X_with_bias = [X(i, :) 1]; 
       
        y1 = X_with_bias * w1;
        y2 = X_with_bias * w2;
        
        dw1 = lr * (targets(i) - y1) * X_with_bias';
        dw2 = lr * (targets(i) - y2) * X_with_bias';
        w1 = w1 + dw1;
        w2 = w2 + dw2;
    end
end

output1 = [X ones(size(X, 1), 1)] * w1 >= 0; 
output2 = [X ones(size(X, 1), 1)] * w2 >= 0; 
output = output1 & output2; 

disp('Trained weights for Adaline unit 1 and bias):');
disp(w1');

disp('Trained weights for Adaline unit 2 and bias):');
disp(w2');

disp('Outputs of the Madaline:');
disp(output');
disp('Target values (bipolar encoding):');
disp(targets');
