function g=BoundaryValue(n,x0,y0)
h=2*pi/n;
%apple-shape region(double integration)
rmax=@(theta) 0.3*(1+0.9*cos(theta)+0.15*sin(2*theta))./(1+0.7*cos(theta));% polar coordination:
for j=1:n+1
    theta1=(j-1)*h;
    z1=cos(theta1);z2=sin(theta1);
    c=[z1,z2];
    g(j,1)=quad2d(@(theta,r) func3(theta,r,c,x0,y0),0,2*pi,0,rmax);
end
g1=g;

g=g1;