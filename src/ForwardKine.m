function [X,Y] = ForwardKine(q_rand)
t1 = q_rand(1);
t2 = q_rand(2);
t3 = q_rand(3);

x1 = 5 * cos(t1);
x2 = 5 * cos(t1) + 5 * cos(t1+t2);
x3 = 5 * cos(t1) + 5 * cos(t1+t2) + 5 * cos(t1+t2+t3);

y1 = 5 * sin(t1);
y2 = 5 * sin(t1) + 5 * sin(t1+t2);
y3 = 5 * sin(t1) + 5 * sin(t1+t2) + 5 * sin(t1+t2+t3);

X = [0 x1 x2 x3];
Y = [0 y1 y2 y3];
end

