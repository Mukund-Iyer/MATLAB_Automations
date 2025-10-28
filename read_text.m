function [status,content] = read_text()
    content = '';
    status = true;
    [file,location,~] = uigetfile("title","Title Name","MultiSelect","off");
    if isnumeric(file)
        status = false;
        disp("No file selected");
    else
        if exist([location filesep file],"file")
            fileID = fopen([location filesep file]);
            content = fread(fileID, '*char')';
            fclose(fileID);
        else
            disp("Invalid file selected");
            status = false;
        end
    end
end