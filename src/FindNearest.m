function q_near = FindNearest(Ta, q_rand)
dist = zeros(size(Ta,1), 1);

for i = 1:size(Ta,1)
    [X, Y] = ForwardKine(Ta(i,:));
    [X_prime, Y_prime] = ForwardKine(q_rand);

    dist(i) = sqrt((X(2)-X_prime(2)).^2 + (X(3)-X_prime(3)).^2 + (X(4)-X_prime(4)).^2 + ...
        (Y(2)-Y_prime(2)).^2 + (Y(3)-Y_prime(3)).^2 + (Y(4)-Y_prime(4)).^2 );
end
[~, idx] = min(dist);
q_near = Ta(idx,:);


end

