function [t, P, A_algae] = lakeModel(a, b, ga, mu, A_init, Ib, dt, T, layers, P_init)
% lakeModel Stratified eutrophication model of lakes
% Input Parameters:
%   a, b      - Phosphorus correlation coefficient
%   ga, mu    - Algae growth/death factor (1×layers vector)
%   A_init    - Initial algae concentration (1×layers vector)
%   Ib        - Phosphorus input
%   dt, T     - Step size vs. total duration
%   layers    - Number of layers
%   P_init    - Initial phosphorus concentration (1×layers vector)
% Output Parameters:
%   t         - Time vectors
%   P         - Phosphorus concentration matrix (layers×length(t))
%   A_algae   - Algae Concentration Matrix (layers×length(t))

t = 0:dt:T;
P = zeros(layers, length(t));
A_algae = zeros(layers, length(t));

% Set the initial conditions
for j = 1:layers
    P(j,1) = P_init(j);
    A_algae(j,1) = A_init(j);
end

% Simulate loops
for i = 2:length(t)
    I = Ib;
    for j = 1:layers
        dP_dt = I - a * P(j, i-1) * A_algae(j, i-1) - b * P(j, i-1);
        P(j, i) = P(j, i-1) + dP_dt * dt;

        gamma_eff = ga(j) * P(j, i-1);
        mu_eff = mu(j);
        dA_dt = gamma_eff * A_algae(j, i-1) - mu_eff * A_algae(j, i-1);
        A_algae(j, i) = A_algae(j, i-1) + dA_dt * dt;
    end
end
end