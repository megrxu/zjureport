clc;clear;

B = [1 0 0];

figure;
a = 0.8;
A = [1 -(0.5+a) 0.5*a];
freqz(B, A);
title('a = 0.8');

figure;
a = 0.9;
A = [1 -(0.5+a) 0.5*a];
freqz(B, A);
title('a = 0.9');

figure;
a = 1.0;
A = [1 -(0.5+a) 0.5*a];
freqz(B, A);
title('a = 1.0');

figure;
a = 1.1;
A = [1 -(0.5+a) 0.5*a];
freqz(B, A);
title('a = 1.1');