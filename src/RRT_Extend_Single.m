function [result, Ta, q_target] = RRT_Extend_Single(Ta, q_rand, step_length,circles)
% extends only once

q_target = [];
q_near = FindNearest(Ta, q_rand);
q_int = LIMIT(q_rand, q_near, step_length);

delta_q = q_int-q_near;

for i = 1:length(delta_q)
    h1 = delta_q(i);
    h2 = delta_q(i) + 2*pi;
    h3 = delta_q(i) - 2*pi;
    [~,idx] = min(abs([h1 h2 h3]));
    A = [h1 h2 h3];
    delta_q(i) = A(idx);
end

num_steps = ceil(norm(delta_q)/step_length);
% step_size=step_length;
step_size = norm(delta_q)/num_steps;

% step_size = step_length;

result = LocalPlanner(q_near, q_int, step_size, circles);
if (result == 1)
    Ta = [Ta; q_int];
    q_target = q_int;
end

end


