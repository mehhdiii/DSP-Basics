%% q1a
close all; 
n = -5:5;


x = (n<0)*(-1) + (n>=0 & n<=2);

stem(n, x, 'Linewidth', 3)
title('x[n]u[2-n]', 'fontsize', 20)
xlim([-5 5])
ylim([-2 2])
% legend('x[n]', 'u[2-n]')
print -deps figures/1a.eps

%% q1b

n = -5:5;

x = (n==3);

stem(n, x, 'Linewidth', 3)
title('x[n-3]\delta[n-3]', 'fontsize', 20)

xlim([-5 5])
ylim([-2 2])

print -deps figures/1b.eps

%% q3


n = -5:6;

x1 = (n>=0 & n<=2);
h = [n>=-4 & n<=-2]; 
figure()
hold on 
stem(n, x1, 'Linewidth', 3)
title('x[n]', 'fontsize', 20)
xlabel('k')
xlim([-5 5])
ylim([-2 2])
stem(n, h, '-','Linewidth', 3)
title('x[k]h[-(k-n)]', 'fontsize', 20)
legend('x[n]', 'h[n-k]','fontsize', 20)

hold off
print -dpng figures/3in.png

figure()
x = (n<0)*(0) + (n==0)+ (n==1)*0 + (n==2)*(-1)+ (n==3)*(-2)+ (n==4)*(-1)+(n>0 & n<=2);

stem(n, x, 'Linewidth', 3)
title('y[n]', 'fontsize', 20)
xlim([-5 5])
ylim([-2 2])

print -deps figures/3.eps
