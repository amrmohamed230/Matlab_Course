theta=linspace(0,6*pi,200);
x=sin(theta);
y=cos(theta)+2;
z=linspace(0,10,length(theta));
plot3(x,y,z)