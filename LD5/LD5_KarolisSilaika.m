x = 0:0.001:2;

S.signalas = cos(sin(2*pi*x));
S.x = x;
S.pavadinimas = 'f(x) = cos(sin(2\pix))';

plot(S.x, S.signalas)
title(S.pavadinimas)
xlabel('x')
ylabel('f(x)')
grid on
%% 

A = round(10*rand + 1);

spejimas = input('Atspek skaiciu: ');

while spejimas ~= A
    if spejimas < A
        disp('skaicius per mazas')
    else
        disp('skaicius per didelis')
    end
    spejimas = input('Bandyk dar karta: ');
end

disp('Atspejai!')
%% 

tekstas = input('Ivesk sakini: ', 's');

rezultatas = '';
pasalinta = 0;

for i = 1:length(tekstas)
    if tekstas(i) == ' '
        if i > 1 && tekstas(i-1) == ' '
            pasalinta = pasalinta + 1;
        else
            rezultatas = [rezultatas tekstas(i)];
        end
    else
        rezultatas = [rezultatas tekstas(i)];
    end
end

disp(rezultatas)
disp(['Pasalinta tarpu: ' num2str(pasalinta)])
