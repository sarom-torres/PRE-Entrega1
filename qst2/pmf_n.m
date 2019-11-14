function N = pmf_n(k,n,p)

  z = n-k;
  n1 = n-1;
  k1 = k-1;
  z1 = n1-k1;
  
  coef = factorial(n1)/(factorial (k1) * factorial(z1));
  N = coef * (p**k) * ((1-p)**z);

end