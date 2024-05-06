
X = [0 0;
     0 1;
     1 0;
     1 1];

targets = [0; 0; 0; 1];

w = rand(size(X, 2), 1);

lr = 0.1;

for i = 1:size(X, 1)
    y = X(i, :) * w;
   
    w = w + lr * X(i, :)' * (targets(i) - y);
end

output = X * w;

disp('Trained weights:');
disp(w');

disp('Outputs of the Hebbian neuron:');
disp(output');
disp('Target values:');
disp(targets');
