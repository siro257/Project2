function doIntersect = CheckInter(q, circles)
% qgoal  = [0 0.9273 -0.9273];
% if q == qgoal
%     fprintf('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!GOTEM\n')
%     DrawArms(X,Y,1);
% end

doIntersect=0;
[X, Y] = ForwardKine(q);
P1 = [X(1), Y(1)]; % always 0 0
P2 = [X(2), Y(2)];
P3 = [X(3), Y(3)];
P4 = [X(4), Y(4)];

for i = 1:size(circles,1)
    
    C = circles(i, 1:2);
    R = circles(i, 3);
% -----------------------------------------------

    d = P2 - P1;
    f = P1 - C;
    
    a = dot(d,d);
    b = 2*dot(f,d);
    c = dot(f,f)-R^2;
    
    disc = b*b-4*a*c;
    
    if disc < 0
        doIntersect = 0;
    else
        disc = sqrt(disc);
        t1 = (-b - disc)/(2*a);
        t2 = (-b + disc)/(2*a);
        if (t1 >= 0 && t1 <=0)
            doIntersect = 1;
            break
        elseif (t2 >= 0 && t2 <= 1)
            doIntersect = 1;
            break
        end
    end
% -----------------------------------------------
    d = P3 - P2;
    f = P2 - C;
    
    a = dot(d,d);
    b = 2*dot(f,d);
    c = dot(f,f)-R^2;
    
    disc = b*b-4*a*c;
    
    if disc < 0
        doIntersect = 0;
    else
        disc = sqrt(disc);
        t1 = (-b - disc)/(2*a);
        t2 = (-b + disc)/(2*a);
        if (t1 >= 0 && t1 <=0)
            doIntersect = 1;
            break
        elseif (t2 >= 0 && t2 <= 1)
            doIntersect = 1;
            break
        end
    end
% -----------------------------------------------
    d = P4 - P3;
    f = P3 - C;
    
    a = dot(d,d);
    b = 2*dot(f,d);
    c = dot(f,f)-R^2;
    
    disc = b*b-4*a*c;
    
    if disc < 0        
        doIntersect = 0;
    else
        disc = sqrt(disc);
        t1 = (-b - disc)/(2*a);
        t2 = (-b + disc)/(2*a);
        if (t1 >= 0 && t1 <=0)
            doIntersect = 1;
            break
        elseif (t2 >= 0 && t2 <= 1)
            doIntersect = 1;
            break
        end
    end  
% -----------------------------------------------
    d = P4 - P3;
    f = P4 - C;
    
    a = dot(d,d);
    b = 2*dot(f,d);
    c = dot(f,f)-R^2;

    disc = b*b-4*a*c;
    
    if disc < 0
        doIntersect = 0;
    else
        disc = sqrt(disc);
        t1 = (-b - disc)/(2*a);
        t2 = (-b + disc)/(2*a);
        if (t1 >= 0 && t1 <=0)
            doIntersect = 1;
            break
        elseif (t2 >= 0 && t2 <= 1)
            doIntersect = 1;
            break
        end
    end  
    
end
if (doIntersect == 1)
    DrawArms(X,Y,2);
else
    DrawArms(X,Y,3);
end

end

