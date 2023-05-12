function Delta = b(x,y)
evalin('base','h')
Delta = (x+y)/2;
assignin('base','S',y)
end
