clc
clear all
close all

n = 50; #numero de lancamentos
p = 1/4; #probabilidade de sucesso
Nexp = 100000; #numero de experimento

#-----Simulado------------------------------------------------------------------


#---PMF_pratica---
for j = 1: Nexp
  y(j) = rand_binom(n,p);
end

Sk = 0: n;

hist_y = hist(y,Sk);
pmf_prat = hist_y/Nexp; 
stem(Sk,pmf_prat);
hold on

#---Media_pratica---
x = 0;
for j = 1: (n+1)
  med(j) = x*pmf_prat(j);
  x = x+1;
end
media_pratica = sum(med)

#---Variancia_pratica---

z = 0;
for j = 1: (n+1)
  ez2(j) = (z**2)*pmf_prat(j); 
  z = z+1;
end
variancia_pratica = sum(ez2)-(media_pratica**2) 


#-----Teorico-------------------------------------------------------------------

#---PMF_teorica---  
pk = zeros(1,n+1);

k = 0;
for i = 1 : (n+1)
  pk(i) = pmf_k(n,p,k);
  k = k+1;
end

Sk;
pk;
bar(Sk,pk,'y');

#---Media_teorica---
media_teorica = media(n,p) 

#---Variancia_teorica---
variancia_teorica = var(n,p)

