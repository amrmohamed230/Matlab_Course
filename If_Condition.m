clc;
min=10;
max=40;
diff=max-min;
x=round(rand(10)*diff+min);
if any(x(:)>50)
    display('we have a value greater than 50')
elseif any(x(:)>40)
    display('we have a value greater than 40')
else
    display('we dont have a value greater than 50 nor 40')
end