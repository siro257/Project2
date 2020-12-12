function q_rand = RandomConfig()
% returns random coordinates of joints. 
% x1 = randi([0, x_max]);
% x2 = randi([0, x_max]);
% x3 = randi([0, x_max]);
% 
% y1 = randi([0, y_max]); 
% y2 = randi([0, y_max]);
% y3 = randi([0, y_max]);

theta1 = 0 + (2*pi)*rand();
theta2 = 0 + (2*pi)*rand();
theta3 = 0 + (2*pi)*rand();

q_rand = [theta1, theta2, theta3];
end

