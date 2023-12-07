clc
clear all
close all

dataA = xlsread ('Matlab_VelProfile_+13D.xlsx','A')
dataB = xlsread ('Matlab_VelProfile_+13D.xlsx','B')
dataC = xlsread ('Matlab_VelProfile_+13D.xlsx','C')
dataD = xlsread ('Matlab_VelProfile_+13D.xlsx','D')
dataE = xlsread ('Matlab_VelProfile_+13D.xlsx','E')
dataF = xlsread ('Matlab_VelProfile_+13D.xlsx','F')
dataG = xlsread ('Matlab_VelProfile_+13D.xlsx','G')
dataH = xlsread ('Matlab_VelProfile_+13D.xlsx','H')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig = figure()
tcl = tiledlayout(2,4);

nexttile(tcl)
hold on
% grid minor
grid on 
box on
p1 = scatter (dataA(:,1),dataA(:,2),'xk','DisplayName','Experiments')
p2 = plot (dataA(:,1),dataA(:,3),'--b','LineWidth',2,'DisplayName','Std')
p3 = plot (dataA(:,1),dataA(:,4),'-r','LineWidth',2,'DisplayName','Psi')
p4 = plot (dataA(:,1),dataA(:,7),'-.m','LineWidth',2,'DisplayName','Slatter')
title('Case A')
xlim([-1.05 1.05])
ylim([-0.05 1.5])

hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataB(:,1),dataB(:,2),'xk')
plot (dataB(:,1),dataB(:,3),'--b','LineWidth',2)
plot (dataB(:,1),dataB(:,4),'-r','LineWidth',2)
plot (dataB(:,1),dataB(:,7),'-.m','LineWidth',2)
xline(-0.2)
xline(0.2)
title('Case B')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataC(:,1),dataC(:,2),'xk')
plot (dataC(:,1),dataC(:,3),'--b','LineWidth',2)
plot (dataC(:,1),dataC(:,4),'-r','LineWidth',2)
p5 = plot (dataC(:,1),dataC(:,5),'-.','LineWidth',2,'Color',[0, 0.5, 0],'DisplayName','Torrance')
xline(-0.2)
xline(0.2)
title('Case C')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataD(:,1),dataD(:,2),'xk')
p6 = plot (dataD(:,1),dataD(:,3),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250],'DisplayName','Laminar')
plot (dataD(:,1),dataD(:,4),'--b','LineWidth',2)
plot (dataD(:,1),dataD(:,5),'-r','LineWidth',2)
plot (dataD(:,1),dataD(:,6),'-.','LineWidth',2,'Color',[0, 0.5, 0])
xline(-0.2)
xline(0.2)
title('Case D')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataE(:,1),dataE(:,2),'xk')
plot (dataE(:,1),dataE(:,3),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataE(:,1),dataE(:,4),'--b','LineWidth',2)
plot (dataE(:,1),dataE(:,5),'-r','LineWidth',2)
p7 = plot (dataE(:,1),dataE(:,7),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560],'DisplayName','WT')
xline(-0.2)
xline(0.2)
title('Case E')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataG(:,1),dataG(:,2),'xk')
plot (dataG(:,1),dataG(:,3),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataG(:,1),dataG(:,4),'--b','LineWidth',2)
plot (dataG(:,1),dataG(:,5),'-r','LineWidth',2)
plot (dataG(:,1),dataG(:,7),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
title('Case F')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataF(:,1),dataF(:,2),'xk')
plot (dataF(:,1),dataF(:,3),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataF(:,1),dataF(:,4),'--b','LineWidth',2)
plot (dataF(:,1),dataF(:,5),'-r','LineWidth',2)
plot (dataF(:,1),dataF(:,7),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
title('Case G')
xlim([-1.05 1.05])
ylim([-0.05 1.5])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nexttile(tcl)
hold on
grid on 
box on
scatter (dataH(:,1),dataH(:,2),'xk')
plot (dataH(:,1),dataH(:,3),':','LineWidth',2.5,'Color',[0.9290, 0.6940, 0.1250])
plot (dataH(:,1),dataH(:,4),'--b','LineWidth',2)
plot (dataH(:,1),dataH(:,5),'-r','LineWidth',2)
plot (dataH(:,1),dataH(:,7),'-.','LineWidth',2,'Color',[0.4940, 0.1840, 0.5560])
title('Case H')
xlim([-1.05 1.05])
ylim([-0.05 2])
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
hL = legend([p1,p2,p3,p4,p5,p6,p7], 'Orientation','horizontal'); 

% Move the legend to the top of the figure
hL.Layout.Tile = 'north';

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 9.5, 5], 'PaperUnits', 'Inches', 'PaperSize', [9.5, 5])
exportgraphics(gcf,'axe.pdf','Resolution',1000)