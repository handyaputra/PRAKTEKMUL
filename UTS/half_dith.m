in = imread('cat.jpg');

I = [1 2;3 0];
T = 255*(I + 0.5)/(2.^2);

if size(in,3)==3
    in=rgb2gray(in);
end

[x,y] = size(in);
halfIn = zeros(x,y);

for i=1:x
    for j=1:y
        if in(i,j) > T(mod(i,2)+1, mod(j,2)+1)
            halfIn(i,j) = 255;
        else
            halfIn(i,j) = 0;
        end
    end
end

figure, imshow(in);
figure, imshow(halfIn);
in