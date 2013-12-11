# Bloques

numeritos = [1, 2, 3, 4]
puts numeritos.inspect

numeritos.collect! do |n|
  n * 2
end

puts numeritos.inspect


["Galletitas", "Chocolates", "Caramelos"].each do |c|
  puts c 
end

# Inyectables
numeros = (1..3)
# Acumula cosas:
puts numeros.inject(:+)
puts numeros.to_a.inspect

# Otra forma mejor de explicar inject:

numeros.inject { |a, b| puts a, b }

numeros.inject { |a, b| p "#{a} - #{b}"}

numeros.inject(10) { |a, b| p "#{a} #{b}" }


# Procs:

p = Proc.new { puts "Soy un cacahuate"}

10.times.each { p.call }

10.times.each(&p)
