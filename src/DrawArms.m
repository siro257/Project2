function h = DrawArms(x,y,color)
qgoal  = [0 0.9273 -0.9273];
[X,Y] = ForwardKine(qgoal);

if color == 1
l = line(x,y,'color','b');
l1 = plot(x(1), y(1), '-');
l5 = plot(x(1), y(1), 'k');
l2 = plot(x(2), y(2), 'b.');
l6 = plot(x(2), y(2), 'bs');
l3 = plot(x(3), y(3), 'b.');
l7 = plot(x(3), y(3), 'bs');
l4 = plot(x(4), y(4), 'b.','MarkerSize', 20);
l8 = plot(x(4), y(4), 'bs','MarkerSize', 20);
end
if color == 2
    
l = line(x,y,'color','r');
l1 = plot(x(1), y(1), '-');
l5 = plot(x(1), y(1), 'k');
l2 = plot(x(2), y(2), 'r.');
l6 = plot(x(2), y(2), 'rs');
l3 = plot(x(3), y(3), 'r.');
l7 = plot(x(3), y(3), 'rs');
l4 = plot(x(4), y(4), 'r.', 'MarkerSize', 20);
l8 = plot(x(4), y(4), 'rs', 'MarkerSize', 20);
end
if color == 3
    l = line(x,y,'color','g');
    l1 = plot(x(1), y(1), '-');
    l5 = plot(x(1), y(1), 'k');
    l2 = plot(x(2), y(2), 'g.');
    l6 = plot(x(2), y(2), 'gs');
    l3 = plot(x(3), y(3), 'g.');
    l7 = plot(x(3), y(3), 'gs');
    l4 = plot(x(4), y(4), 'g.', 'MarkerSize', 20);
    l8 = plot(x(4), y(4), 'gs', 'MarkerSize', 20); 
end

if all(x==X) && all(y==Y)
    disp('Found it!')
    l = line(x,y,'color','b','LineWidth',8);
    l1 = plot(x(1), y(1), '-');
    l5 = plot(x(1), y(1), 'k');
    l2 = plot(x(2), y(2), 'b.');
    l6 = plot(x(2), y(2), 'bs');
    l3 = plot(x(3), y(3), 'b.');
    l7 = plot(x(3), y(3), 'bs');
    l4 = plot(x(4), y(4), 'b.','MarkerSize', 20);
    l8 = plot(x(4), y(4), 'bs','MarkerSize', 20);
end

end

