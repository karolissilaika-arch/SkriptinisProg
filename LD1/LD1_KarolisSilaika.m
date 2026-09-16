%
% LD1_KarolisSilaika.m
% Karolis Silaika
% EF-25/1
% 2026-09-16
%
%% Paprastas skriptas
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]  |  F_2 [-x-]')

% Pagalbos paieska (skirtingi budai):
% help sin
% doc sin
% help plot
% doc plot
% help title
% doc title
% help linspace
% help size
% help max


%% Papildoma uzduotis

N = 5; 

v = N+1 : 0.5 : N+4;


A = reshape(N:N+8, 3, 3)';

sel_a = A(3, 2);

sel_b = A(2:3, 1:2);

sel_c = A([1 3], [1 3]);

v_row = v(1:3);      
A_ext = [A; v_row];

disp(A)
disp(v)
disp(A_ext)
