function h = GetDistance(a,b)
% difference in radian

h1 = sqrt(sum((a-b).^2));
h2 = abs(h1 + 2*pi); 
h3 = abs(h1 - 2*pi);

h = min([h1 h2 h3]);
end

