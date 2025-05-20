a=0:2*pi/100:2*pi;
x1=cos(a);y1=sin(a);
plot(x1,y1,'r')
axis([-1.5 1.5 -1.5 1.5])
hold on
r=0.3*(1+0.9*cos(a)+0.15*sin(2*a))./(1+0.7*cos(a));
x4=-0.0+r.*cos(a);y4=0.0+r.*sin(a);
plot(x4,y4,'r-')
