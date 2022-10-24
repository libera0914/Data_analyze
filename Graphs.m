



































































%% Plotting graphs in Matlab
clear all
close all


%% Show two plots on different y-axes
%% 250 data processed
x1Vals = [1,2, 3, 4, 5, 6];
y1Vals = [8.72,7.24, 5.58, 5.06, 4.92, 4.73];
figure(1)
yyaxis left
plot(x1Vals, y1Vals, '-bd')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Processing time vs number of processors')


%% 5,000 data processed
x2Vals = [1,2, 3, 4, 5, 6];
y2Vals = [168.04,133.08, 94.57, 76.93, 66.34, 60.11,];
figure(1)
yyaxis right
plot(x2Vals, y2Vals, '-rx')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Processing time vs number of processors')

legend('250 Data', '5,000 Data')


%% Show two plots on same y-axis
%% Mean processing time
y1MeanVals = y1Vals / 250;
y2MeanVals = y2Vals / 5000;

figure(2)
plot(x1Vals, y1MeanVals, '-bd')
hold on
plot(x2Vals, y2MeanVals, '-rx')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Mean Time Estimation')
legend('250 Data', '5,000 Data')

%%
%To ploy the sequencial processing graph 

