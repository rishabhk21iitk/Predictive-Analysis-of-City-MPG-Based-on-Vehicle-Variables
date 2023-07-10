clc;
clear all;
T = readtable('CarsFinal.xls');
x1 = ones(307,1);
x2 = T.weight;
x3 = T.hrspwr;
x4 = T.engsize;
x5 = T.cylinders;
x6 = T.wheelbase;
x7 = T.sports;
x8 = T.suv;
x9 = T.wagon;
x10 = T.van;
x11 = T.truck;
x12 = T.awd;
x13 = T.rearwd;
x14 = x3.*x5;

%% a part (Data Summary)
t1 = [mean(T.price);std(T.price);min(T.price);max(T.price)];
t2 = [mean(T.cityMPG);std(T.cityMPG);min(T.cityMPG);max(T.cityMPG)];
t3 = [mean(x2);std(x2);min(x2);max(x2)];
t4 = [mean(x3);std(x3);min(x3);max(x3)];
t5 = [mean(x4);std(x4);min(x4);max(x4)];
t6 = [mean(x5);std(x5);min(x5);max(x5)];
t7 = [mean(x6);std(x6);min(x6);max(x6)];
t8 = [mean(x7);std(x7);min(x7);max(x7)];
t9 = [mean(x8);std(x8);min(x8);max(x8)];
t10 = [mean(x9);std(x9);min(x9);max(x9)];
t11 = [mean(x10);std(x10);min(x10);max(x10)];
t12 = [mean(x11);std(x11);min(x11);max(x11)];
t13 = [mean(x12);std(x12);min(x12);max(x12)];
t14 = [mean(x13);std(x13);min(x13);max(x13)];
t15 = [mean(x14);std(x14);min(x14);max(x14)];

summary = table(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,'VariableNames',{'price','cityMPG','weight','hrspwr','engsize','cyinders','wheelbase','sports','suv','wagon','van','truck','awd','rearwd','x14'},'RowNames',{'Mean','Standard Deviation','Minimum','Maximum'});

%% b part (Regression)
X = [x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14];
mdl = fitlm(X, T.cityMPG)

%% c part (Scatter plot)
figure;
plotResiduals(mdl,'fitted');

%% d part (Fuelcons)
fuelcons = (T.cityMPG).^(-1);
Xnew = [x2 x3 x4];
mdlnew = fitlm(Xnew, fuelcons);
figure;
plotResiduals(mdlnew,'fitted');

%% e part (Regression again on Fuelcons)

Xnew1 = [x2 x3 x4 x5 x6];
mdlnew1 = fitlm(Xnew1, fuelcons);
figure;
plotResiduals(mdlnew1,'fitted');

%% f part (Dummy Variables)

Xnew2 = [x2 x3 x4 x5 x6 x7 x8 x9 x10 x11];
mdlnew2 = fitlm(Xnew2, fuelcons);
figure;
plotResiduals(mdlnew2,'fitted');

%% g part (Full Regression)

Xnew3 = [x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14];
mdlnew3 = fitlm(Xnew3, fuelcons);
Xnew4 = [x2 x3+1 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14];
mdlnew4 = fitlm(Xnew4, fuelcons);
