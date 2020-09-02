function [y] = Sphere(x)
d = length(x); 
total = 0;
for i = 1:d
	total = total + x(i)^2;
end
y = total;
end
