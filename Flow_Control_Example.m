clc;
%% This is a for Loop example
display('======== This is a for Loop example ========')
for n=1:5
    display(['We are inside the for loop and this is loop number ' num2str(n)])
end
disp('=====================================================')
%% This is a while Loop example
display('======== This is a while Loop example ========')
k=0;
kmax=5;
while k<=kmax
    display(['This is a while loop. Max number is ' num2str(kmax) '. Current cycle number is '  num2str(k)])
k=k+1;
end
disp('================================================================')
%% This is an if statement inside of a for Loop example
display('======== This is an if statement inside of a for Loop example ========')
lmax=10;
for l=1:lmax
    if l<lmax/3
        disp(['counter is less than ' num2str(lmax/3)])
    elseif l>=lmax/2 && l<=3*lmax/4
        disp(['Counter is between ' num2str(lmax/2) ' and ' num2str(3*lmax/4)])
    else
        disp(['counter is lost let''s search for it together'])
    end
end
disp('================================================================')
%% This is a switch case statement inside of a for Loop example
display('======== This is a switch case statement inside of a for Loop example ========')
arr={'a' 'b' 'c' 'd' 'e' 1};
for m=1:length(arr)
    switch arr{m}
        case {'a','e'}
            disp('an alphapetic character is found and it''s a vowl')
        case {'b','c','d'}
            disp('an alphapetic character is found and it''s not a vowl')
        otherwise
            disp('a character is found and it''s not alphapetic')
    end
end 
disp('================================================================')

