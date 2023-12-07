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
p2 = plot (dataA(:,3),dataA(:,1),'--b','LineWidth',2,'DisplayName','Std')
p3 = plot (dataA(:,4),dataA(:,1),'-r','LineWidth',2,'DisplayName','Psi')
p4 = plot (dataA(:,7),dataA(:,1),'-.m','LineWidth',2,'DisplayName','Slatter')
yline(0.7)
title('Case A')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataB(:,2),dataB(:,1),'xk')
plot (dataB(:,3),dataB(:,1),'--b','LineWidth',2)
plot (dataB(:,4),dataB(:,1),'-r','LineWidth',2)
plot (dataB(:,7),dataB(:,1),'-.m','LineWidth',2)
yline(0.7)
title('Case B')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataC(:,2),dataC(:,1),'xk')
plot (dataC(:,3),dataC(:,1),'--b','LineWidth',2)
plot (dataC(:,4),dataC(:,1),'-r','LineWidth',2)
p5 = plot (dataC(:,5),dataC(:,1),'-.','LineWidth',2,'Color',[0, 0.5, 0],'DisplayName','Torrance')
yline(0.7)
title('Case C')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataD(:,2),dataD(:,1),'xk')
p6 = plot (dataD(:,3),dataD(:,1),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250],'DisplayName','Laminar')
plot (dataD(:,4),dataD(:,1),'--b','LineWidth',2)
plot (dataD(:,5),dataD(:,1),'-r','LineWidth',2)
plot (dataD(:,6),dataD(:,1),'-.','LineWidth',2,'Color',[0, 0.5, 0])
yline(0.7)
title('Case D')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataE(:,2),dataE(:,1),'xk')
plot (dataE(:,3),dataE(:,1),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataE(:,4),dataE(:,1),'--b','LineWidth',2)
plot (dataE(:,5),dataE(:,1),'-r','LineWidth',2)
p7 = plot (dataE(:,7),dataE(:,1),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560],'DisplayName','WT')
yline(0.7)
title('Case E')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on
box on
scatter (dataG(:,2),dataG(:,1),'xk')
plot (dataG(:,3),dataG(:,1),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataG(:,4),dataG(:,1),'--b','LineWidth',2)
plot (dataG(:,5),dataG(:,1),'-r','LineWidth',2)
plot (dataG(:,7),dataG(:,1),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
yline(0.7)
title('Case F')
ylim([0 1])
%axis tight
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataF(:,2),dataF(:,1),'xk')
plot (dataF(:,3),dataF(:,1),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataF(:,4),dataF(:,1),'--b','LineWidth',2)
plot (dataF(:,5),dataF(:,1),'-r','LineWidth',2)
plot (dataF(:,7),dataF(:,1),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
yline(0.7)
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
scatter (dataH(:,2),dataH(:,1),'xk')
plot (dataH(:,3),dataH(:,1),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataH(:,4),dataH(:,1),'--b','LineWidth',2)
plot (dataH(:,5),dataH(:,1),'-r','LineWidth',2)
plot (dataH(:,7),dataH(:,1),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
yline(0.7)
title('Case H')
xlim([0.4 2])
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
hL = legend([p1,p2,p3,p4,p5,p6,p7], 'Orientation','horizontal','FontSize',12); 

% Move the legend to the top of the figure
hL.Layout.Tile = 'north';

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 9.5, 5], 'PaperUnits', 'Inches', 'PaperSize', [9.5, 5])
exportgraphics(gcf,'axe.pdf','Resolution',1000)