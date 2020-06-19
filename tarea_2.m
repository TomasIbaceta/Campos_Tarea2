%[ELO250] TAREA 2
%Alexander Palacio (201721011-7)
%Tomas Ibaceta     (201721039-7)
%l1nc3 (201721050-2)

clc;
clear;
%parametros universales
p_e_0 = (1*10^(-9))/(36*pi); %permitividad_electrica (epsilon)
p_m_0 = 4*pi*10^(-7); %permeabilidad_magnetica (mu)

%parametros de materiales
p_e_r_medio1=1;
p_m_r_medio1=1;

p_e_r_medio2=2;
p_m_r_medio2=5;


%parametros de la onda
p_e_medio1 = p_e_r_medio1 * p_e_0; 
p_m_medio1 = p_m_r_medio1 * p_m_0;
p_e_medio2 = p_e_r_medio2 * p_e_0; 
p_m_medio2 = p_m_r_medio2 * p_m_0;

cond = 1;%conductividad (phi)
freq = 1;%f, en [hz]

y_medio1 = sqrt(1j*2*pi*freq*p_m_medio1*(cond+1j*2*pi*freq*p_e_medio1));%constante de propagacion
y_medio2 = sqrt(1j*2*pi*freq*p_m_medio2*(cond+1j*2*pi*freq*p_e_medio2));%constante de propagacion
alpha = real(y_medio1);
beta = imag(y_medio2);

%n: ethas
n_medio1 = (1j*2*pi*freq*p_m_medio1) / y_medio1 ;
n_medio2 = (1j*2*pi*freq*p_m_medio2) / y_medio2 ;
n_medio3 = n_medio1;

ref_12 = (n_medio2 - n_medio1) / (n_medio2+n_medio1);
ref_23 = (n_medio3 - n_medio2) / (n_medio3+n_medio2);
%------------------------------------------------------------------------------------------------
%ecuaciones de ondas:




