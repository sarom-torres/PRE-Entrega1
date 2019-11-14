clc
clear all
close all

p = 0.9;
n = 20;
Nexp = 100000;

#------------Teorico---------------

#media
media_teor = med_bin(n,p)

#probabilidade
k = 16;
for i = 1 : (n-k+1)
  pmf_teor(i) = pmf_bin(n,p,k);
  k = k+1;
end

pmf_teor;
prob_teor = sum(pmf_teor)


#------------Pratico---------------

#probabilidade
for j = 1: Nexp
  y(j) = rand_binom(n,p);
end

Sk = 0: n;

hist_y = hist(y,Sk);
pmf_prat = hist_y/Nexp;
prob_prat = sum(pmf_prat(16:end))
bar(Sk,pmf_prat);

#media
x = 0;
for j = 1: n+1
  med(j) = x*pmf_prat(j);
  x = x+1;
end

media_prat = sum(med)


