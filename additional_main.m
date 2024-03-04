function additional_main()
    % AdditionalTask main function

    % TASK 1
    try
        x = linspace(-5, 5, 100); 
        o = 1.0; 
        p = 0.0; 
        gaus2dimensionPlot(x, p, o);
    catch ex
        error('Error building plot for 2-dimensional Gaussian: %s', ex.message);
    end

    % TASK 2
    try
        x1 = linspace(-5, 5, 100); 
        x2 = linspace(-5, 5, 100); 
        o1 = 1.0; 
        o2 = 0.5; 
        p1 = 0.0; 
        p2 = 0.0; 
        gaus3dimensionPlot(x1, x2, p1, p2, o1, o2);
    catch ex
        error('Error building plot for 3-dimensional Gaussian: %s', ex.message);
    end

    % TASK 3

end

function gaus2dimensionPlot(x, p, o)
    % Plot for 2-dimensional normal distribution
    try
        figure();
        y = 1 / (o * sqrt(2 * pi)) * exp(-(x - p).^2 / (2 * o^2));
        plot(x, y);
        xlabel('Value Range x');
        ylabel('Normal Distribution');
        title(['Normal Distribution with o = ', num2str(o), ' and p = ', num2str(p)]);
        grid on;
    catch ex
        error('Error calculating 2-dimensional normal distribution: %s', ex.message);
    end
end

function gaus3dimensionPlot(x, y, p1, p2, o1, o2)
    % Plot for 3-dimensional Gaussian distribution
    try
        figure();
        [R1, R2] = meshgrid(x, y);
        z = 1 / (2 * pi * o1 * o2) * exp(-((R1 - p1).^2 / (2 * o1^2) + (R2 - p2).^2 / (2 * o2^2)));
        surf(R1, R2, z);
        xlabel('Range r1');
        ylabel('Range r2');
        zlabel('Multivariate Gaussian Distribution');
        title(['Multivariate Gaussian Distribution with o1 = ', num2str(o1), ', o2 = ', num2str(o2), ', p1 = ', num2str(p1), ', p2 = ', num2str(p2)]);
        grid on;
    catch ex
        error('Error calculating 3-dimensional Gaussian distribution: %s', ex.message);
    end
end

