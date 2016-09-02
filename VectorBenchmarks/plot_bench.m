x64 =csvread('x64.csv');
x86 =csvread('x86.csv');

figure('Position',[0,0,1600,900]);
subplot(1,2,1)
plot_data(x86', 'Sum of array - .NET 4.6.1, Release x86, i7-3770K');
subplot(1,2,2)
plot_data(x64', 'Sum of array - .NET 4.6.1, Release x64, i7-3770K');

print -dpdf -color "-S1600,900" subplots.pdf