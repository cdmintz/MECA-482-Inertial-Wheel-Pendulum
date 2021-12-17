clear all; close all; clc 
%% Parameters
R=4.17;
km=0.0078;
g=9.81;
rdisk=.25*2.54/100;
l=4*2.54/100;
m1=.06;
m2=.04;
m=m1+m2;
mgl=m*g*l;
I1=(1/12)*m1*l^2;
I2=.25*m2*rdisk^2;
X=[(m1*((l/2)^2)+m2*l^2 +I1 +I2),I2;I2,I2];
Xi=inv(X);

%% Linear Model of Pendulum
A=[0 1 0;Xi(1,1)*mgl 0 0;Xi(2,1)*mgl 0 0];
B=(km/R)*[0;Xi(1,2);Xi(2,2)];
C=eye(size(A));
D=zeros(3,1);
%% Closed Loop characteristics
OS=.50;
Ts=1;
zeta=(-log(OS))/(sqrt(pi^2 +(log(OS))^2));
wn=4/(zeta*Ts);
wnzeta=wn*zeta;
sqzeta=wn*(sqrt(1-(zeta^2)));
P1=-wnzeta+sqzeta*i;
P2=-(wn*zeta)-sqzeta*i;
P3=-0.719;
P=[P1,P2,P3];
K=place(A,B,P);
Acl=A-B*K;
Ecl=eig(Acl);

%% Closed Loop
t=0:0.001:5;
u=.001*ones(size(t));
x0=[0.001,0,0];
sys_cl=ss(Acl,B,C,D);
lsim(sys_cl,u,t,x0);
xlabel('Time(sec)')
ylabel('State Variable(θ1,⍵1,⍵2)')

%% Stability Check
a=isstable(sys_cl);
if a==1
    disp('*Closed Loop System Is Stable*')
else
    disp('*Closed Loop System Is NOT Stable*')
end
