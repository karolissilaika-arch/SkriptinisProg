r     = linspace(0, 1, 50); 
theta = linspace(0, 2*pi, 100); 

[R, T] = meshgrid(r, theta);
X = R .* cos(T);  
Y = R .* sin(T);

F = 1 - 2*X.^2 - 3*Y.^2;    

figure;
surf(X,Y,F);

colormap("parula");
shading interp;

view(45, 30);
xlabel('x ašis');                     
ylabel('y ašis');                     
zlabel('f(x,y)');                   
title('Paviršius f(x,y) = 1 - 2x^2 - 3y^2'); 

x = linspace(-2, 2, 100); 
y = linspace(-2, 2, 100); 

[X, Y] = meshgrid(x, y);  
F = sin((abs(X) + abs(Y)) / 20) .* exp(-abs(X + Y));

surf(X, Y, F);                       
colormap(jet);                        
shading interp;  

view(60, 30);
xlabel('x ašis');
ylabel('y ašis');
zlabel('f(x,y)');
title('Paviršius f(x,y) = sin((|x|+|y|)/20)e^{-|x+y|}');

x = linspace(-1, 1, 60);           
y = linspace(-1, 1, 60);   

[X, Y] = meshgrid(x, y); 
Z = 1 - (X.^2 + Y.^2); 

surf(X, Y, Z, 'FaceColor', 'r', 'EdgeColor', 'none');                                          

camlight('left');                              
lighting gouraud;     
