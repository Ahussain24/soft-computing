
x = [0 0;
     0 1;
     1 0;
     1 1];

targets = [0; 0; 0; 1];

w = [1; 1];
theta = 1.5;

output = zeros(size(x, 1), 1);

for i = 1:size(x, 1)
    net_input = x(i, :) * w;

    if net_input >= theta
        output(i) = 1; 
    else
        output(i) = 0;
    end
end


result = horzcat(output, targets);
disp(result);
