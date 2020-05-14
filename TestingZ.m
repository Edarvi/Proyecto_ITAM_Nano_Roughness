

img = imread('Imagen4AMFFinal.gif');
imshow(img);
hold on
x1=1;y1=1;
x2=138;y2=138;
plot(x1,y1,'o',x2,y2,'o')
axis([0 138 0 138])
grid on
hold on
x=[x1:0.1:x2]; %definir el vector independiente
m=(y2-y1)/(x2-x1); %pendiente de la recta
y=(m.*(x-x1))+y1; %vector dependiente
plot(x,y,'r')
hold off

