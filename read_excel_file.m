% Function to read an excel file. I am using readcell command to read it.
% It will read only the first sheet by default. So, modify as per your needs.
function [status,cell_output] = read_excel_file()
    cell_output = {};
    status = true;
    [file,location,~] = uigetfile("Excel file|*.xlsx","Select excel file","MultiSelect","off");
    if isnumeric(file)
        disp("No file selected");
        status = false;
    else
        path = [location filesep file];
        if exist(path,"file")
            cell_output = readcell(path,"FileType","spreadsheet","TextType","char");
        else
            disp("Invalid file selected");
            status = false;
        end
    end
end