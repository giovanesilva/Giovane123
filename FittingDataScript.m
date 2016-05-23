clearvars
close all
y = [-2 3 4 6 13 14 16];
x = 3:9;
plot(x,y,'.','markersize',20)
xlabel('x')
ylabel('y')

n = numel(x);
A = [ones(n,1) x']
coeff = A\y'
xplot = 2:0.01:10;
yfit = coeff(1) + coeff(2)*xplot;
hold on
plot(xplot,yfit,'-')