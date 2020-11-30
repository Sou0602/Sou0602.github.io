
%% Clear workspace
%
clc;
clear all;
close all;
%}
%% Declare the agents
% Usage: addAgent(name, initialPosition, initialVelocity, goal)
%4agents - antipodal - (0.5, 0.8) , (0.3 , 1.6) , (0.3 , 2.4)
%{
agents = [
    addAgent('1', [-5 -5], [0 0], [5 5],1),
    addAgent('2', [5 -5],   [0 0], [-5 5],1),
    addAgent('3', [-5 5],  [0 0], [5 -5],1),
    addAgent('4', [5 5],  [0 0], [-5 -5],1),
    ];
%}

%3v2 - (0.3 , 3.2) , (0.3 , 1.6)
%{
agents = [
     addAgent('1', [-8 2.5], [0 0], [5 2.5],1),
     addAgent('2', [5 1.5],   [0 0], [-5 1.5],1),
     addAgent('3', [-8 0],  [0 0], [5 0],1),
     addAgent('4', [5 -1.5],  [0 0], [-5 -1.5],1),
     addAgent('5', [-8 -2.5],  [0 0], [5 -2.5],1), 
];
%}
%6agents - config1
%{
agents=[
     addAgent('1', [-6 -2], [0 0], [4 2],1),
     addAgent('2', [-5 3],   [0 0], [4 -3],1),
     addAgent('3', [-4 -4],     [0 0], [2 4],1),
     addAgent('4', [4 0],  [0 0], [-8 0],1),
     addAgent('5', [4 -2],  [0 0], [-6 1    ],1), 
     addAgent('6', [2 -4],  [0 0], [-1 5],1), 
     addAgent('7', [5 2] , [0 0] , [-4 2],1),
     addAgent('8', [-1 -5],  [0 0], [-5 5],1)
];
%}

%6agents - config2
%{
agents=[
     addAgent('1', [-7 -3], [0 0], [6 4],1),
     addAgent('2', [8 5],   [0 0], [-5 -4],1),
     addAgent('3', [-4 6],     [0 0], [1 -8],1),
     addAgent('4', [6 0],  [0 0], [-8 0],1),
     addAgent('5', [8 -5],  [0 0], [-7 5],1), 
     addAgent('6', [-1 -7],  [0 0], [1 6],1), 

];
%}
%6agents - config3 
%{
agents=[
    
     addAgent('1', [-6 6],     [0 0], [10 -5],1),
     addAgent('2', [6 -8],  [0 0], [-6 6],1),
     addAgent('3', [-8 0],  [0 0], [8 0],1),  
     addAgent('4', [8 -1],  [0 0], [-6 -7],1),
     addAgent('5', [-7 3],  [0 0], [6 3],1), 
     addAgent('6', [8 3],  [0 0], [-3 -8],1), 
    % addAgent('7', [8 -6], [0 0], [-8 -6],1), %Undergoes collision with
  %   this agent
];
%}
%8agents - config4
%{
agents=[
     addAgent('1', [-2 -7], [0 0], [7 0],1),
     addAgent('2', [10 3],   [0 0], [-5 -3],1),
     addAgent('3', [11 -1],  [0 0], [-2 -3],1),
     addAgent('4', [3 4],  [0 0], [8 -8],1),
     addAgent('5', [2 -8],  [0 0], [3 6],1), 
     addAgent('6', [5 -7],  [0 0], [1 4],1), 
     addAgent('7', [9 0],  [0 0], [-4 2],1),
     addAgent('8', [-3 -3],  [0 0], [9 -4],1), 
];
%}
%9agents - config5
%{
agents=[
     addAgent('1', [-8 0], [0 0], [8 0],1),
     addAgent('2', [-6 4],   [0 0], [6 -8],1),
     addAgent('3', [-6 -3],     [0 0], [8 3],1),
     addAgent('4', [0 -8],  [0 0], [0 8],1),
     addAgent('5', [-3 -6],  [0 0], [8 7],1), 
     addAgent('6', [4 -7],  [0 0], [-4 8],1), 
     addAgent('7', [3 6],  [0 0], [3 -6],1), 
     addAgent('8', [5 -6],  [0 0], [5 7],1), 
     addAgent('9', [-3 6],  [0 0], [-3 -6],1), 
];
%}
%9agents - config6
%{
agents=[
     addAgent('1', [1 7], [0 0], [9 1],1),
     addAgent('2', [4 9],   [0 0], [2 -2],1),
     addAgent('3', [1 -1],     [0 0], [5 7],1),
     addAgent('4', [7 7],  [0 0], [-1 -1],1),
     addAgent('5', [-2 0],  [0 0], [9 7],1), 
     addAgent('6', [8 4],  [0 0], [-2 2],1), 
     addAgent('7', [-3 3],  [0 0], [9 3],1), 
     addAgent('8', [7 -1],  [0 0], [-1 7],1),
     addAgent('9', [-2 6], [0 0], [4 -1],1)
];
%}
%dconfig
agents=[
     addAgent('1', [-6 -6], [0 0], [6 6],1),
     addAgent('2', [-6 -3],   [0 0], [6 9],1),
     addAgent('3', [-6 6],     [0 0], [6 -6],1),
     addAgent('4', [-6 3],  [0 0], [6 -9],1),
     addAgent('5', [-3 6],  [0 0], [-3 -6],1), 
     addAgent('6', [-1 -6],  [0 0], [-1 6],1), 
     addAgent('7', [5 1],  [0 0], [-5 1],1), 
     addAgent('8', [5 -1],  [0 0], [-5 -1],1), 
     addAgent('9', [1 7],  [0 0], [1 -6],1), 
];



axisLimits = [-12 12 -12 12]; % [xmin xmax ymin ymax] axis limits of the plot
dt = 0.1;

%% Simulation loop
% Runs till the distance to goal of all the agents is less than 0.32m
% Or for max iterations
maxIterations = 500;
counter = 0;
T = zeros(maxIterations,1);
Velocity= [];
omega = [];
while counter < maxIterations
    
    
    maxDistFromGoal = 0;
    % Get the new velocity command for every agent but do not update it now
   
    for i = 1:length(agents)
        tic
        % Get agents in the sensor range
        % gflag - flag is equal to one when agent reaches goal
        if(agents(i).gflag ~= 1) 
        obstacles = [];
        for j = 1:length(agents)
            if i ~= j
                if inSensorRange(agents(i), agents(j))
                    obstacles = [obstacles; agents(j)];
                end
            end
        end
        % Get the new control for the agent
        agents(i).newControl = getControls(agents(i), obstacles, dt);
        else
        % If the agent reaches goal , new control is zero.
         agents(i).newControl = [0,0];
         agents(i).velocity = [0,0];
        end
        agents(i).t1 = toc;
    end

    % Update the positions of all the agents using the newly obtained controls
    % This is equivalent to running the same algorithm simultaneously on all agents
    n=4;
    v=zeros(length(agents),n);
    w=zeros(length(agents),n);

    
    for i = 1:length(agents)
        tic
           if(agents(i).gflag~=1)
            agents(i).path = [agents(i).path; agents(i).position];
            goal_pos = futurePosition(agents(i), dt); %The position reached following a holonomic model
           % v , w for each agent at n waypoints from current position to
           % future holonomic position
            [v(i,:),w(i,:),coeff]= vel_prof(agents(i),goal_pos,n);
            agents(i).coeff=coeff;
           end
        agents(i).t2 = toc ; 
        agents(i).t3 = [];
    end
        vel =[];
        
    for j=1:n
        %Updating the positions of all agents at each of the n waypoints
        %and plotting them
        
          for m=1:length(agents) 
              
              tic
              
              if(agents(m).gflag~=1)
              agents(m).path = [agents(m).path; agents(m).position];
              % To calculate distance from goal
              diff_vec = (agents(m).position - agents(m).goal);
              diff_sq = diff_vec.^2;
              goaldist = sqrt(sum(diff_sq));
              if goaldist > 0.50
            [agents(m).position,agents(m).phi]=newPosition(agents(m),v(m,j),w(m,j),dt/n);
            agents(m).velocity=newVelocity(v(m,j),agents(m).phi);
            agents(m).VelData = [agents(m).VelData ; agents(m).velocity];
              else
                  agents(m).gflag = 1;
                  agents(m).velocity = [0,0];
              end
              else
                  agents(m).velocity = [0,0];
            %goaldist = sqrt(sum((agents(i).position - agents(i).goal).^2));
           % vel = [vel;agents(m).velocity, m ,goaldist,agents(m).gflag];
              end
              vel = [vel;agents(m).velocity, m ,goaldist,agents(m).gflag];
              
              agents(m).t3 = [agents(m).t3,toc];
          end
          Velocity = [Velocity ; vel ];
    % Plot the current simulation step
    % Usage: plotSimulation(agents, counter, dt, axisLimits, true) -> Save the outputs to disk
    %        plotSimulation(agents, counter, dt, axisLimits, false) -> Don't save the outputs to disk
          
          plotSimulation(agents, counter, dt, axisLimits, true); 
    end
  
    counter = counter + 1;
    sum1 = 0;
    % Stop running if the goal is reached
    for k = 1:length(agents)
        agents(k).timedata = [agents(k).timedata;sum(agents(k).t1 + agents(k).t2 + sum(agents(k).t3))];
    if agents(k).gflag == 1
        sum1 = sum1 +1;
    end
    end
    
    if sum1 == length(agents)
        
        break
        
    end
    %}
  
end