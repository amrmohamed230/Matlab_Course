function ReadSystemData()
% This function get an excel sheet as an input and provide the system data
% as an output as variables to workspace
[file,path] = uigetfile('*.xls;*.xlsx'); % get excel file "user interface get file"
if (isequal(file,0))||(isequal(path,0)) % if no file was selected
    disp('No File was Selected')
    return % this return will end the function
elseif ~(isequal(file(end-3:end),'xlsx'))||isequal(file(end-2:end),'xls') % if the selected file is not an excel file
    disp('The selected file is not an excel sheet')
    return % this return will end the function
else
    TargetSheet='SystemData';
    if any(contains(sheetnames(file),TargetSheet))
        disp(['The File ' file ' was selected'])
        T=readtable(file,'Sheet',TargetSheet);
        writetable(T,'Data - Copy.xlsx','Sheet','System') % to write the data from sheet excel into another
        if height(T)==0
            disp(['''' TargetSheet '''' ' is empty.'])
        else
            Table=table2struct(T);
            Tablefields=fieldnames(T); % a cell array which contains only the fields name to be used to remove a wholen parameter along with it's fields from table
            tmp=rmfield(Table,Tablefields{1}); % to remove the first cell from the cell array
            for k=1:height(T)
                assignin('base',T{k,1}{1},tmp(k)); % to create a struct with the name of the selected cell by extracting the data from each cell
            end
        end
    else
disp(['The selected file ' '''' file '''' ' doesn''t contain the sheet ' '''' TargetSheet ''''])
    end

end