function varargout = specfunkc(varargin)
% specfunkc funkcija, kurios veikimas priklauso nuo įėjimo kintamųjų skaičiaus.
% y = specfunkc(a) grąžina a^3.
% y = specfunkc(a, b) grąžina a^2 * b^3.
% Įėjimas: vienas arba du kintamieji (skaičiai, vektoriai ar matricos).
% Išėjimas: vienas kintamasis y.

if nargin < 1 || nargin > 2
    error('Funkcijai reikia vieno arba dviejų kintamųjų.');
end

if nargin == 1
    varargout{1} = varargin{1}.^3;
else
    varargout{1} = (varargin{1}.^2) .* (varargin{2}.^3);
end
end