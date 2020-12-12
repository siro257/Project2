function q_int = LIMIT(q_rand, q_near, step_length)
% Limit returns a state qint which is steplength away from qnear 
% in the direction to qrandom if the distance between qnear and 
% qrandom is larger than stepsize. Otherwise, it returns qrandom. 

% It basically limits the step you will take from qnear towards 
% qrandom to steplength. 

delta_q = q_rand - q_near;
for i = 1:length(delta_q)
    h1 = delta_q(i);
    h2 = delta_q(i) + 2*pi;
    h3 = delta_q(i) - 2*pi;
    [~,idx] = min(abs([h1 h2 h3]));
    A = [h1 h2 h3];
    delta_q(i) = A(idx);
end

if norm(delta_q) > step_length
    delta_q_prime = (delta_q/norm(delta_q)) * step_length;
    q_int = q_near + delta_q_prime;
else
    q_int = q_rand;
end
end

