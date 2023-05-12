clc;
Result = 'yes';
switch Result
    case {'Yes','yes','y'}
        display('Yes')
    case {'No','no','n'}
        display('No')
    otherwise
        display('No Entry')
end
