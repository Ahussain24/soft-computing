
filename = 'input_data.xlsx';
sheet = 'Sheet1';
range = 'A1:C10';
data = xlsread(filename, sheet, range);


modified_data = 2 * data;

output_filename = 'output_data.xlsx';
output_sheet = 'ModifiedData';


xlswrite(output_filename, modified_data, output_sheet);
disp('Data has been written to output_data.xlsx.');
