
patterns = [
    1 1 1 0;
    1 0 1 0;
    0 1 0 1;
    0 0 1 1
];


numPatterns = size(patterns, 1);


weights = zeros(size(patterns, 2));

for i = 1:numPatterns
    inputPattern = patterns(i, :);
    weights = weights + (inputPattern' * inputPattern);
end


newPattern = [1 1 0 0];

disp('newPattern:');
disp(newPattern);

updatedPattern = sign(newPattern * weights);

disp('updatedPattern:');
disp(updatedPattern);
