% Read a text file based on user selected text file
function content = read_text()
    [file,location,~] = uigetfile("title","Title Name","MultiSelect","off");
    fileID = fopen([location filesep file]);
    content = fread(fileID, '*char')';
    fclose(fileID);
end