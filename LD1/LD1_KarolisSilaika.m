%
% LD1_KarolisSilaika.m
% Vardas Pavarde: Karolis Silaika
% Grupe: EF-25/1
% Data: 2026-09-16
%

%% Privaloma uzduotis - skriptas is 1 pav.

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

% linspace, size, max sintakses issiaiskinimas:
% help linspace
% help size
% help max


%% Papildoma uzduotis

N = 5; % paskutinis studento ID skaitmuo

% Vektorius: pirmasis elementas N+1, paskutinis N+4, zingsnis 0.5
v = N+1 : 0.5 : N+4;

% 3x3 matrica A: pirmasis elementas N, kiekvienas tolesnis +1
A = reshape(N:N+8, 3, 3)';

% Eiluciu/stulpeliu atranka pagal schema (pakoreguoti pagal savo variantą a/b/c)
% pvz. a) paskutine eilute, 2 stulpelis:
sel_a = A(3, 2);
% pvz. b) 2 ir 3 eilutes, 1 ir 2 stulpeliai:
sel_b = A(2:3, 1:2);
% pvz. c) 1 eilute ir paskutine eilute, 1 ir 3 stulpeliai:
sel_c = A([1 3], [1 3]);

% Vektoriaus v prijungimas prie A (v pritaikytas kaip papildoma eilute)
v_row = v(1:3);        % paimame pirmus 3 elementus, kad tiktu prie 3 stulpeliu
A_ext = [A; v_row];

disp(A)
disp(v)
disp(A_ext)
