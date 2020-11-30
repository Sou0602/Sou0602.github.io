function controls = getControls(agent, obstacles, dt)
%getControls - Returns the controls that will avoid collision
%
% Syntax: controls = getControls(agent, obstacles, dt)
%
    
    cost = @(u) 1*desiredVelocityCost(agent, u') + 0.3*sum((agent.velocity - u').^2)+0*sum((u').^2);
    constraints = [];
    
    if length(obstacles) > 0
        constraints = @(u) getConstraints_orca(agent, obstacles, u', dt);
    end
    
    init = agent.velocity' * 0.5;
    lb = [-1 -1];
    ub = [1 1];

    options = optimoptions('fmincon','Display','final-detailed','Algorithm','sqp');
    
    [controls,~,exitflag,~] = fmincon(cost, init, [], [], [], [], lb, ub, constraints, options);
    controls = controls';
    disp(exitflag);
    % Smoothen the controls
    controls = smoothenControls(agent, controls);

end