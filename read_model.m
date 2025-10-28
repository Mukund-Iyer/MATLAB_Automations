% Read a Simulink model layer by layer till deepest layer
function [status,message] = read_model()
    status = true;
    message = '';
    [file,location,~] = uigetfile("Simulink Model|*.slx","Select model","MultiSelect","off");
    if isnumeric(file)
        status = false;
        disp("No file selected");
    else
        if exist([location filesep file],"file")
            sys = load_system([location filesep file]);
            top_layer = find_system(sys, "SearchDepth",1,"Type","block");
            for index = 2:100
                listx = find_system(sys, "SearchDepth",index,"Type","block");
                layer_blocks = setdiff(listx,top_layer);
                if ~isempty(layer_blocks)
        
                    % Do layer-by-layer manipulations here
        
                    % Add the blocks to visited list
                    top_layer = [top_layer;layer_blocks];
                else
                    % We break the loop as we have reached the lowest layer
                    break;
                end
            end
        else
            disp("Invalid file selected");
        end
    end
end