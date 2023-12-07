clc
clear all
close all

dataA = xlsread ('Matlab_VelProfile_-17D.xlsx','A')
dataB = xlsread ('Matlab_VelProfile_-17D.xlsx','B')
dataC = xlsread ('Matlab_VelProfile_-17D.xlsx','C')
dataD = xlsread ('Matlab_VelProfile_-17D.xlsx','D')
dataE = xlsread ('Matlab_VelProfile_-17D.xlsx','E')
dataF = xlsread ('Matlab_VelProfile_-17D.xlsx','F')
dataG = xlsread ('Matlab_VelProfile_-17D.xlsx','G')
dataH = xlsread ('Matlab_VelProfile_-17D.xlsx','H')
dataI = xlsread ('Matlab_VelProfile_-17D.xlsx','I')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig = figure()
tcl = tiledlayout(2,4);

nexttile(tcl)
hold on
grid on 
box on
p1 = scatter (dataA(:,2),dataA(:,1),'xk','DisplayName','Experiments')
p2 = plot (dataA(:,5),dataA(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0],'DisplayName','Torrance')
p3 = plot (dataA(:,6),dataA(:,1),'--r','LineWidth',2,'DisplayName','WT')
p4 = plot (dataA(:,7),dataA(:,1),':b','LineWidth',2,'DisplayName','Slatter')
title('Case A')
ylim([0 1])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataB(:,2),dataB(:,1),'k')
plot (dataB(:,5),dataB(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataB(:,6),dataB(:,1),'--r','LineWidth',2)
plot (dataB(:,7),dataB(:,1),':b','LineWidth',2)
title('Case B')
xlim([0.7 1.3])
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataC(:,2),dataC(:,1),'k')
plot (dataC(:,5),dataC(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataC(:,6),dataC(:,1),'--r','LineWidth',2)
plot (dataC(:,7),dataC(:,1),':b','LineWidth',2)
title('Case C')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataD(:,2),dataD(:,1),'k')
plot (dataD(:,6),dataD(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataD(:,7),dataD(:,1),'--r','LineWidth',2)
plot (dataD(:,8),dataD(:,1),':b','LineWidth',2)
title('Case D')
ylim([0 1])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataE(:,2),dataE(:,1),'k')
plot (dataE(:,6),dataE(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataE(:,7),dataE(:,1),'--r','LineWidth',2)
plot (dataE(:,8),dataE(:,1),':b','LineWidth',2)
title('Case E')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataG(:,2),dataG(:,1),'k')
plot (dataG(:,5),dataG(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataG(:,6),dataG(:,1),'--r','LineWidth',2)
plot (dataG(:,7),dataG(:,1),':b','LineWidth',2)
title('Case F')
xlim([0.3 1.35])
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataF(:,2),dataF(:,1),'k')
plot (dataF(:,6),dataF(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataF(:,7),dataF(:,1),'--r','LineWidth',2)
plot (dataF(:,8),dataF(:,1),':b','LineWidth',2)
title('Case G')
xlim([0.4 1.4])
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataH(:,2),dataH(:,1),'k')
plot (dataH(:,5),dataH(:,1),'-','LineWidth',2,'Color',[0, 0.5, 0])
plot (dataH(:,6),dataH(:,1),'--r','LineWidth',2)
plot (dataH(:,7),dataH(:,1),':b','LineWidth',2)
title('Case H')
xlim([0.6 2])
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
han=axes(fig,'visible','off'); 
% han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Relative velocity (u/U)','FontSize',14);
xlabel(han,'Relative radial distance (r/R)','FontSize',14);
% title(han,'yourTitle');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Construct a Legend with the data from the sub-plots
hL = legend([p1,p2,p3,p4], 'Orientation','horizontal','FontSize',12); 

% Move the legend to the top of the figure
hL.Layout.Tile = 'north';

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 9.5, 5], 'PaperUnits', 'Inches', 'PaperSize', [9.5, 5])
exportgraphics(gcf,'axe.pdf','Resolution',1000)