function N = rand_pascal(k,p)

sucessos = 0;
cont = 0;
N = 0;  
while 1
  
  cont = cont + 1;
  resultado = rand < p;
  if (resultado == 1)
      sucessos = sucessos + 1;
      if (sucessos == k)
          N = cont;
          break;
      end
  end 
end