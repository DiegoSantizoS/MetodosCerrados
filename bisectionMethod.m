% Definir la función
f = @(x) x.^3 - 6*x.^2 + 11*x - 6;

% Intervalo inicial
a = 2.99; 
b = 3.01; 

% Tolerancia
tol = 1e-6;

% Inicializar variables
c_prev = 0; % Valor inicial para el error relativo

% Encabezado de la tabla
fprintf('Iteración |   a      |   b      |   c      | f(a)*f(c) | Error Relativo Aproximado\n');
fprintf('------------------------------------------------------------------------------\n');

for iter = 1:100
    c = (a + b) / 2; % Punto medio
    
    % Calcular el error relativo aproximado
    if iter > 1
        error_rel = abs(c - c_prev) / abs(c);
    else
        error_rel = NaN; % No aplica en la primera iteración
    end
    
    fprintf('%9d | %7.4f | %7.4f | %7.4f | %9.4f | %24.6f\n', iter, a, b, c, f(a)*f(c), error_rel);
    
    % Verificar convergencia
    if iter > 1 && error_rel < tol
        break;
    end
    
    % Actualizar el intervalo
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
    
    % Guardar el valor actual de c para la próxima iteración
    c_prev = c;
end

fprintf('Raíz aproximada: %.6f\n', c);
