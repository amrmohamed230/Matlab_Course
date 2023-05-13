n=50;
x1=linspace(-2,2,n);
y1=linspace(-2,2,n);
% mesh grid repeats the x1 array along y-axis by the length of x1 array
% mesh grid repeats the y1 array along x-axis by the length of y1 array
[X1 Y1]=meshgrid(x1,y1);
Z1=X1.*exp(-X1.^2-Y1.^2);
figure
surf(X1,Y1,Z1,'EdgeColor','r')
figure
mesh(X1,Y1,Z1,'EdgeColor','r')
colorbar