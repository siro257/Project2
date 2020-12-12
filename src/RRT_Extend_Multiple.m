function [result, Tb, q_connect] = RRT_Extend_Multiple(Tb, q_target, step_length, circles)
% extends multiple times
q_connect = [];
q_near = FindNearest(Tb, q_target);
q_int = LIMIT(q_target,q_near,step_length);
q_last = q_near;

delta_q = q_target-q_near;

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

for i = 1:num_steps
    result = LocalPlanner(q_int,q_last,step_size,circles);
    if result == 0
        break;
    end
    Tb = [Tb; q_int];
    q_connect = q_int;
    if (i<num_steps)
        q_last = q_int;
        q_int = LIMIT(q_target,q_int,step_length);
    end
end

end

