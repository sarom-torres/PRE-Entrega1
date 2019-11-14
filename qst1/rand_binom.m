function K = rand_binom(n, p)

  K = sum(rand(1, n) < p); 
  
end
