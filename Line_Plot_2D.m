x=linspace(0,10,200);
y=zeros(1,length(x));
% y=x for x from 0 to 3
y(x>=0 & x<=3)=x(x>=0 & x<=3);
% y=-x+6 for x from 3 to 4
y(x>3 & x<=4)=-x(x>3 & x<=4)+6;
% y=x^2-14 for x from 4 to 6
y(x>4 & x<=6)=x(x>4 & x<=6).^2-14;
% y=exp(-x+6+ln(22)) for x from 6 to 10
y(x>6 & x<=10)=exp(-x(x>6 & x<=10)+6+log(22));
y2=-y+22;
%plot(x,y,':rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g') %:rs: ':' for dotted line style, 'r' for color red, 's' for square marker
subplot(3,2,1)
h=plot(x,y,x,y2)   
set(h(1),'Linestyle',':','Color','r','Marker','s','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g');
set(h(2),'Linestyle','-.','Color','r','Marker','o','LineWidth',2,'MarkerEdgeColor','y','MarkerFaceColor','r');
xlabel('This is X-Axis')
ylabel('This is Y-Axis')
title('This is a Title')
legend({'Y1','Y2'})
grid on
n=gca %get current Access
set(n,'XTick',0:2:10) % to set x-axis 
set(n,'YTick',0:5:30) % to set y-axis 
set(n,'XLim',[0 15]) % to set x-axis limits
set(n,'YLim',[0 30]) % to set y-axis limits
subplot(3,2,2)
plot(x,y)
subplot(3,2,3)
plot(x,y2)
subplot(3,2,4)
plot(x,y)
hold on
plot(x,y2)