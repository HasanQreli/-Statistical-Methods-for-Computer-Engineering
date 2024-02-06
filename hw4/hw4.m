Z = norminv(0.99);
no_sim = ceil(0.25* ((Z / 0.03)^2));

total = zeros(1,no_sim);
for N = 1:no_sim
    lambda = 50; % Parameter
    U = rand; % Generated Uniform variable
    i = 0; % Initial value
    F = exp(-lambda); % Initial value, F(0)
    while (U >= F); % The loop ends when U < F(i)
        i = i + 1;
        F = F + exp(-lambda) * lambda^i/gamma(i+1);
        
    end;
    noBulk = i;
    
    wBulk = 0;
    for i = 1:noBulk
        wBulk += sum( -1/0.1 * log(rand(60,1)) );
    end;
    
    
    lambda = 40; % Parameter
    U = rand; % Generated Uniform variable
    i = 0; % Initial value
    F = exp(-lambda); % Initial value, F(0)
    while (U >= F); % The loop ends when U < F(i)
        i = i + 1;
        F = F + exp(-lambda) * lambda^i/gamma(i+1);
    end;
    noContainer = i;
    
    wContainer = 0;
    for i = 1:noContainer
        wContainer += sum( -1/0.05 * log(rand(100,1)) );
    end;
    
    
    lambda = 25; % Parameter
    U = rand; % Generated Uniform variable
    i = 0; % Initial value
    F = exp(-lambda); % Initial value, F(0)
    while (U >= F); % The loop ends when U < F(i)
        i = i + 1;
        F = F + exp(-lambda) * lambda^i/gamma(i+1);
        
    end;
    noOil = i;
    
    wOil = 0;
    for i = 1:noOil
        wOil += sum( -1/0.02 * log(rand(120,1)) );
    end;
    
    total(N) = wOil + wContainer + wBulk;
    
end;

fprintf("probability = %g\n",sum(total>300000)/1509);
fprintf("mean = %g\n", mean(total));
fprintf("standard deviation = %g\n",std(total));