minval=0;
maxval=5;
x=round(maxval*rand(1,100))+minval;
ocur=zeros(maxval-minval+1,1);
length(x(x==k))
for k=1:length(ocur)
    ocur(k) = length(x(x==k-1));
end
y=[1,0,0,0,0,0]; % to extrude a specific value
n=pie(ocur,y) %Pie Chart
set(n(1),'LineWidth',2,'FaceColor','r','Marker','d','MarkerFaceColor','w')
set(n(2),'Color','g','FontSize',16)