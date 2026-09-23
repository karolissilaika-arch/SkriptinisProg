%
% LD3_KarolisSilaika.m
% Karolis Silaika
% Ef-25/1
% 2026
clear
%1 uzduotis
t=linspace(-pi,pi,50)
y=sin(t)

figure
plot(t, y, '--r')
axis([min(t) max(t) min(y) max(y)])
title('y(t) = sin(t)')
xlabel('t')
ylabel('y')
legend('y = sin(t)')
grid on


x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

figure
plot(x, y1, x, y2)
axis([min(x) max(x) min([y1 y2]) max([y1 y2])])
title('y_1(x) = -x^2+9, y_2(x) = x^3-2x^2-9')
xlabel('x')
ylabel('y')
legend('y_1 = -x^2+9', 'y_2 = x^3-2x^2-9')
grid on

%2 uzduotis
stud = {'V.A.', 'A.G.', 'D.N.', 'A.T.', 'E.S.', 'J.S.'};

paz = [8 9 7 8;
    7 6 8 5;
    6 7 9 8;
    9 8 6 7;
    5 6 4 6;
    8 7 9 7];

figure

subplot(2,1,1)
bar(paz')
axis([0 5 0 10])
title('Laboratorinių darbų įvertinimai')
xlabel('l.d.')
ylabel('Pazymys')
legend(stud)

subplot(2,1,2)
vid = mean(paz,2);
stem(1:6, vid)
axis([0 7 0 10])
title('Pazymiu vidurkiai')
xlabel('Studentas')
ylabel('Pazymys')

%Papildoma uzduotis

A = 4;
f = 3;
sigma = 1;
U1 = 0.5;
U2 = 2.5;

t = 0 : 0.002 : 1.5;

s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;

x_filtr = x;
x_filtr(abs(x_filtr) < U2) = 0;

figure

subplot(1,2,1)
plot(t, x, '-b')
hold on
plot(t, x_filtr, ':g')
yline(U1, '-k')
yline(U2, '-.k')
title('Pradinis ir filtruotas signalas')
xlabel('t, s', 'FontSize', 13, 'FontWeight', 'bold')
ylabel('Amplitudė, V', 'FontSize', 13, 'FontWeight', 'bold')
legend('Pradinis signalas', 'Filtruotas signalas', 'U_1', 'U_2')
grid on
hold off

subplot(1,2,2)
t_virs_U1 = t(x > U1);
x_virs_U1 = x(x > U1);

stem(t_virs_U1, x_virs_U1)
hold on

[max_val, max_pos] = max(x_virs_U1);
[min_val, min_pos] = min(x_virs_U1);

plot(t_virs_U1(max_pos), max_val, 'ro', 'MarkerSize', 9)
plot(t_virs_U1(min_pos), min_val, 'ro', 'MarkerSize', 9)

title('Reikšmės, viršijančios U_1')
xlabel('t, s', 'FontSize', 13, 'FontWeight', 'bold')
ylabel('Amplitudė, V', 'FontSize', 13, 'FontWeight', 'bold')
legend('Reikšmės > U_1', 'Maksimali reikšmė', 'Minimali reikšmė')
grid on
hold off
