% x1 = 0:0.1:40;
% y1 = 4.*cos(x1)./(x1+2);
% x2 = 1:0.2:20;
% y2 = x2.^2./x2.^3;
% 
% 
% t = tiledlayout(1,1);
% ax1 = axes(t);
% plot(ax1,x1,y1,'-r')
% 
% 
% ax2 = axes(t);
% plot(ax2,x2,y2,'-k')
% ax2.XAxisLocation = 'top';
% ax2.YAxisLocation = 'right';
% ax2.Color = 'none';
% ax1.Box = 'off';
% ax2.Box = 'off';



clear all
clc
close all

vel = [1499.68
1181.12
1046.4
939.12
786.88
670.5304
638.7
443.376
]; 


re = [117896
46604
27956
17709
8280
5366
4273
3463
];

exp = [8.377823409
5.328542094
4.229979466
3.501026694
2.648870637
2.362220802
2.203698109
2.33955689
];

cfd = [8.038572
5.007168
4.363887
3.881917
2.220005
2.798101
2.681536
2.020484
];

lam = [2.8418
2.6569
2.5704
2.4969
2.3843
2.2622
2.2897
2.0739
];

ke = [14.64397
11.1491
10.36015
9.619703
8.012444
6.27058
5.358728
3.79525
];

rsm = [13.58714
10.08443
9.372895
9.518821
7.277729
5.005801
4.005243
3.509381
];

DM = [2.3459
1.7975
1.6087
1.4761
1.3246
1.148
1.1347
0.6659
];


%% Plotting

vel2  = linspace(400, 1600, 100); % define x-variable for the smoothed line
type = 'pchip'; % select smoothing type
% Check this out->  https://www.mathworks.com/help/matlab/ref/interp1.html#btwp6lt-1-method

yy1 = interp1(vel, cfd, vel2,type); % interpolate the remaining values
yy2 = interp1(vel, lam, vel2,type);
yy3 = interp1(vel, ke, vel2,type);
yy4 = interp1(vel, rsm, vel2,type);
yy5 = interp1(vel, DM, vel2,type);


t = tiledlayout(1,1);
ax1 = axes(t);
hold on
p1 = scatter (ax1, vel, exp,'filled','k','DisplayName','Experimental data')
p2 = plot(ax1, vel2, yy4,'-.b','LineWidth',2,'DisplayName','Launder & Spalding (1974)');
p3 = plot(ax1, vel2, yy1,'-r','LineWidth',2,'DisplayName','Mehta et. al (2018)');
p4 = plot(ax1, vel2, yy2,'--','LineWidth',2,'Color',[0, 0.5, 0],'DisplayName','Laminar');
p5 = plot(ax1, vel2, yy5,':m','LineWidth',2.5,'DisplayName','DM');
%plot(vel2, yy3,'x-','LineWidth',1.5);




% p1 = scatter (vel, exp,'filled','k','DisplayName','Experimental data')
% p2 = plot(vel2, yy4,'-.k','LineWidth',2,'DisplayName','Launder & Spalding (1974)');
% p3 = plot(vel2, yy1,'-k','LineWidth',2,'DisplayName','Mehta et. al (2018)');
% p4 = plot(vel2, yy2,'--k','LineWidth',2,'DisplayName','Laminar');
% p5 = plot(vel2, yy5,':k','LineWidth',2.5,'DisplayName','DM');
% %plot(vel2, yy3,'x-','LineWidth',1.5);



ax = gca;
grid on 
box on
xlabel ('Pseudo-shear rate, {8U}/D (s^{-1})', 'FontSize',14)
ylabel ('Wall shear stress (Pa)','FontSize',14)
% title ('Comparison - Wall shear stress prediction')
%legend ('Proposed wall function','Laminar','Std K-epsilon','Std RSM','DM(1959)','Exp')

%% Assigning errorbars

for i =  1:length(exp)
err(i,1)  = 0.1*exp(i,1); % assigning error length as 10% of y
end

p6 = errorbar(ax1, vel,exp,err,'.r','LineWidth',1.2,'DisplayName','10% error bar')

for i =  1:length(exp)
err(i,1)  = 0.05*exp(i,1); % assigning error length as 10% of y
end

p7 = errorbar(ax1, vel,exp,err,'.k','LineWidth',1.2,'DisplayName','5% error bar')

hL = legend ([p1,p2,p3,p4,p5,p6,p7],'Location','best','FontSize',12)
%legend ('Std K-epsilon','Std RSM','DM(1959)','Experimental data','Location','best','FontSize',10)
hL.NumColumns = 2;

x2 = re;
y2 = exp;

ax2 = axes(t);
p8 = scatter(ax2,x2,y2,'.w')
ax2.XAxisLocation = 'top';
ax2.YAxisLocation = 'right';
xlabel('Reynolds No (Re_w)','FontSize',14)
ax2.YAxis.Visible = 'off';
ax2.Color = 'none';
ax2.Box = 'off';


set(gcf, 'Units', 'Inches', 'Position', [0, 0, 9.5, 5], 'PaperUnits', 'Inches', 'PaperSize', [9.5, 5])
exportgraphics(gcf,'WallShearStress_doubleXaxis.pdf','Resolution',1000)