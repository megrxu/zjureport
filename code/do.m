clc;clear;

B = [1 0 0];

subplot(2,2,1);
a = 0.8;
A = [1 -(0.5+a) 0.5*a];
zplane(B, A);
axis([-1.2 1.2 -1.2 1.2]);
title('a = 0.8');

subplot(2,2,2);
a = 0.9;
A = [1 -(0.5+a) 0.5*a];
zplane(B, A);
axis([-1.2 1.2 -1.2 1.2]);
title('a = 0.9');

subplot(2,2,3);
a = 1.0;
A = [1 -(0.5+a) 0.5*a];
zplane(B, A);
axis([-1.2 1.2 -1.2 1.2]);
title('a = 1.1');

subplot(2,2,4);
a = 1.1;
A = [1 -(0.5+a) 0.5*a];
zplane(B, A);
axis([-1.2 1.2 -1.2 1.2]);
title('a = 1.1');