% Definir la función
f = @(x) x.^3 - 6*x.^2 + 11*x - 6;

% Definir el intervalo de graficación
x = linspace(0, 4, 1000); % Exploramos el intervalo [0,4]

% Graficar la función
figure;
plot(x, f(x), 'b-', 'LineWidth', 2); % Gráfica de f(x)
grid on;
xlabel('x');
ylabel('f(x)');
title('Método Gráfico: f(x) = x^3 - 6x^2 + 11x - 6');

% Resaltar el eje x
hold on;
plot(x, zeros(size(x)), 'k--'); % Línea discontinua en el eje x
hold off;
