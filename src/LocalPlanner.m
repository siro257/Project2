function success = LocalPlanner(q_near, q_int, step_size, circles)
% collison detection
% q1 = q_near, q2=q_int
delta_q = q_int - q_near;
num_steps = ceil(norm(delta_q)/step_size);
step = delta_q/num_steps;
collision = 0;
success = 1;
q = q_near;
for i = 1:num_steps
    q = q + step;
    collision = collision || CheckInter(q, circles);
end
success = ~collision;
end

