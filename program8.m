
filename = 'input_data.xlsx';
sheet = 'Sheet1';
data = xlsread(filename, sheet);

% Find missing entries (NaN values) in each column
missing_indices = isnan(data);


column_means = mean(data, 'omitnan'); 
for i = 1:size(data, 2) % Iterate over columns
    data(missing_indices(:,i), i) = column_means(i);
end


output_filename = 'output_data.xlsx';
output_sheet = 'ModifiedData';


xlswrite(output_filename, data, output_sheet);
disp('Missing entries have been replaced with column means and written to output_data.xlsx.');
