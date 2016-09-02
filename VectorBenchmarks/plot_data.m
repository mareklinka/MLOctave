function plot_data (X, chart_name)
plot(X,'linewidth',3);
h = title(chart_name);
set(h, 'fontsize', 20, 'fontweight', 'bold', 'FontName', 'Arial');
h = xlabel('Number of elements');
set(h, 'fontweight', 'bold', 'fontsize', 15, 'FontName', 'Arial');
h = ylabel('Time (ms)');
set(h, 'fontweight', 'bold', 'fontsize', 15, 'FontName', 'Arial');
legend('For sum','AsParallel sum','Parallel.ForEach','Vector sum');
h = legend('location', 'northwest');
set(h, 'fontweight', 'bold', 'fontsize', 15, 'FontName', 'Arial');
h=get (gcf, 'currentaxes');
set(h,'fontweight','bold', 'linewidth', 2, 'FontName', 'Arial', 'fontsize', 15);
set(h,'xtick',[1 : 5]);
set(h,'xticklabel',10 .^ [3 : 7]);
end

