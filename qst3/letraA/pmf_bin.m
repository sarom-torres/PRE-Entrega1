function PMF_K = pmf_bin(n,p,k)

  z = n-k;
  coef_binom = factorial(n)/(factorial (k) * factorial(z));
  PMF_K = coef_binom * (p**k) * ((1-p)**z);
  
end
