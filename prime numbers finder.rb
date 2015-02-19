puts "This is prime numbers finder"
for a in 2..1000
  prime = 0
  b = 1
  begin
    if (a%b == 0) then
      prime += 1
    end
    b += 1
  end while (b <= a || prime < 2)
  if (prime == 2) then
    puts "Number #{a} it is prime number"
  end
end