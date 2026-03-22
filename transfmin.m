% NOME 1:André Filipe Neto Oliveira
% MEC 1: 102855
% Turma: P7

% NOME 2:
% MEC 2:
% Turma: PX

clc 
clear all
close all
%% ******************* DADOS DE ENTRADA ************************************
fp= 1048e6;         %Frequencia de Projecto (em MHz)
fmax= 4*fp;         % Máxima frequencia de simulaçao
j=i;
Z0= 50;             % Impedancia caracteristica
Zl= 125.2 - j*50.1; % Impedancia de Carga
c=3e8;
er= 2.33; 
v=c/(sqrt(er));
w=2*pi*fp;
lambda = v/fp;

%% ****************************PROJECTO******************************
% Transformador lambda/4, num minimo

Yl=1/Zl; % admitancia 
zl=Zl/50; %impedancia normalizada 
yl= 1/zl; % adimtancia normalizada

% Cálculo da resistencia da carga e condensador da carga(equivalente ao Zl)
% r= 1/real(yl);
% Rd=r*50;  % Valor Resistecia desnormalizada  
Rl=1/real(Yl);       % Rl = 145,248 Ω
Cl= imag(Yl)/w;      % Cl = 0.4184 pF    

% Adaptaçao Transfomador lambda/4, num minimo
dquart=  0.225*lambda;      % Comprimento (m) do transformador de quarto de onda
zmin= 0.34; % 0.34Ω obtido na C.S
Zmin = zmin * 50; % Desnormalizar 
Zt=sqrt(Zmin*Z0); 

% *********************** Varrimento em frequencia**********************
h=1e6;
fi=1e6;
fmax=4*fp;
ff=(0:h:fmax);  
lambdaf=v./ff; % Comprimento de onda em funcao da frequencia (m)
betaf= 2*pi./lambdaf; % Constante de fase em funcao da frequência (rad/m)
ww=2*pi.*ff;     
Ylf= 1/Rl + j.*ww.*Cl;
Zlf= 1./Ylf;

%Calculo da impedancia em Zpimenos
Zpi = Z0.*((Zlf + j.*Z0.*tan(betaf.* dquart))./(Z0+j.*Zlf.*tan(betaf.*dquart)));

% Calculo da impedancia de entrada no transformador de lambda/4
Zin=((Zt).^(2))./Zpi;

%Coeficiente de relexao 
plf=(Zin-Z0)./(Zin+Z0);

% ************************Display dos Resultados**********************
figure()
smithplot(plf)
title('Carta de Smith ')

figure()
VSWR =(1+abs(plf))./(1-abs(plf));
subplot(2,2,1)
plot(ff,VSWR)
title('VSWR em função da frequência')
xlabel('f(MHz)');
ylabel('VSWR');
ylim([1 10]);

%Return Loss
subplot(2,2,2)
RL =20.*log10(abs(plf));
plot(ff,RL)
title('Return Loss em função da frequência')
xlabel('f(MHz)');
ylabel('RL');

%Transmission
subplot(2,2,3)
T = 1-abs(plf).^2;
plot(ff,T)
title('Coeficiente de transmissão em função da frequência')
xlabel('f(MHz)');
ylabel('T');

%Reflection Loss
subplot(2,2,4)
RFL =-10.*log10(1-abs(plf).^2);
plot(ff,RFL)
title('Reflection Loss em função da frequência')
xlabel('f(MHz)');
ylabel('RFL');