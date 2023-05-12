minval=5;
maxval=30;
k=minval;
while k<=maxval
    display(['This is the while loop number' '_' num2str(k)])
    if k == 10
        display('Let''s have a break')
        break
    end
    k=k+1;
end