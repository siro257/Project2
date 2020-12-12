% plots circle (represents obstacle)
function h = circle(a)
x = a(1);
y = a(2);
r = a(3);
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold off
end
