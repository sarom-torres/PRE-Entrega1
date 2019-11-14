clc
clear all
close all

k=16;
p=0.9;
Nexp = 100000;

#--------------------Pratico------------------------

#probabilidade

for i = 1 : Nexp
  y(i) = rand_pascal(k,p);
end

maior = (k+max(y));

Sk = k: maior; 
hist_n = hist(y,Sk);
pmf_prat = hist_n/Nexp;
prob_prat = sum(pmf_prat(1:5))

#media

x = k;
for i = 1 : max(y)
  med(i) = x*pmf_prat(i);
  x = x+1;
end
media_prat = sum(med)


#--------------------Teorico------------------------
media_teor = media_pascal(k,p)

pn = zeros(1,k+1);
n = k;
for i = 1 : (max(y)+1)
  pn(i) = pmf_pascal(k,n,p);
  n = n+1;  
end
prob_teor = sum(pn(1:5)) 




