% This script generates a Vector A with 41 values between -10 and 10 inclusive, increment 0.5,
% and transforms each corresponding value into A(n)^3 and 2^A(n), placed
% into vectors B and C respectively. It then plots the values of A(n) on the x
% axis and the values of B(n) and C(n) on the y axis.

% Define vector A

A = [-10 : 0.5 : 10];

% Define vectors B and C

B = zeros(1,length(A));
C = B;

% Replace each index of B with A^3 and of C with 2^A for A(index)

for index = 1:length(A)
    B(index) = A(index)^3;
    C(index) = 2^(A(index));
end

% Close all open plots
close all;

% Display following plots on same graph until hold off
hold on;

% Plot B and C as solid lines with *'s and x's denoting discrete data points
plot(A,B, '-*')
plot(A,C, '-x')

% End plotting on same graph
hold off;   

% Legend for graph

legend('Vector B (A^3)', 'Vector C (2^A)')

% Title for graph

title('Plot of B(A^3) and C(2^A) for Values in Vector A: [-10 : 0.5 : 10]')

% Label plot axes

xlabel('Value (Vector A)')
ylabel('Transformed Values (Vectors B and C)')

% Set x axis to display ticks for each of the 41 values of Vector A
set(gca,'XTick',(-10 : 0.5 : 10))

% Set y axis to display ticks useful for minimum and maximum values of B
% and C
set(gca,'YTick',(-1000 : 50 : 1050))


% Set position and size of graph: x0 (horizontal pixels of bottom left of plot from bottom left of screen), y0 (vertical
% pixels of bottom left of plot from bottom left of screen), plot width (pixels), plot height
% (pixels)
set(gcf, 'Position', [100, 100, 1728, 972])