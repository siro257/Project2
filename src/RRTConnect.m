%%
% James Hwang
% RRTConnect main file

%initial setups
clear all;

%        [theta1 theta2 theta3]
qstart = [0 -0.9273 0.9273];
qgoal  = [0 0.9273 -0.9273];

circles = [8 0 2; 8 8 2; 8 -8 2];

for i = 1:size(circles,1)
    circle(circles(i,:));
end

x = [0 5 10 15];
y = [0 0 0 0];
axis([-10 20 -10 15]);
grid on;
hold on;

l1 = plot(x(1), y(1), '-');
l5 = plot(x(1), y(1), 's');
%---------------------- 
% initial pos
[x, y] = ForwardKine(qstart);
DrawArms(x,y,1);

Ta = [qstart];

%----------------------
% goal pos
% [x, y] = ForwardKine(qgoal);
% DrawArms(x,y,2);

Tb = [qgoal];

% x = L1 * cos(theta1) + L2 * cos(theta1 + theta2) + L3 * cos(theta1+2+3)
% y = L1 * sin(theta1) + L2 * sin(theta1 + theta2) + L3 * sin(theta1+2+3)
%%
%     RRT
maxIter = 1000;
success = 0;
step_length=5;  

for i = 1 : maxIter
    q_rand = RandomConfig();
    [result,Ta,q_target] = RRT_Extend_Single(Ta,q_rand,step_length,circles);
    if result == 1
        [result2,Tb,q_connect] = RRT_Extend_Multiple(Tb,q_target,step_length,circles);
            
        if(result2==1)
            sucess=1;
%             break;
        end
    end
    [Ta,Tb] = SWAP(Ta, Tb);    

end

