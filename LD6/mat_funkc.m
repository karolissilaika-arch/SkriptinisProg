function y = mat_funkc(x)
% mat_funkc skaičiuoja dalimis apibrėžtą funkciją y(x).
% y = mat_funkc(x) grąžina -sin(x), kai x < 0, ir sin(x), kai x >= 0.
% Įėjimas: x - argumentas (skaičius, vektorius ar matrica).
% Išėjimas: y - funkcijos reikšmė (tokio pat dydžio kaip x).

y = sin(x);
y(x < 0) = -sin(x(x < 0));
end