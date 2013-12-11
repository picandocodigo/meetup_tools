# -*- coding: utf-8 -*-

# Sesión de live coding:

#Todo es un objeto

puts "Hola".upcase
puts -1.class

# Ruby es expresivo (?)

raining = false

if ! raining
  puts "No necesitas un paraguas"
end

# Lo reemplazé por
unless raining
  puts "No necesitas un paraguas"
end

# Es todo re loco:
weather = if raining
            "Feo"
          else
            "Lindo"
          end
puts weather

contento = nil

humor = contento || "Contento"
puts humor

# Resultados "esperables"

coso = "Nana"
puts coso * 8 + " Batmaaaan"

puts "Se van sus naves".reverse
puts "La ruta nos aportó otro paso natural".reverse
puts "MicroControladores".swapcase


# Colecciones

choices = ["Bulbasaur", "Charmander", "Squirtle"]

puts choices[0]

puts choices.fetch(3, "¡No mijo!")

puts choices.first

puts choices.last

puts choices.take(2)

puts choices.include?("Pikachu")

puts choices.map(&:upcase)


# Al infinito y más allá:
infinito = (1..Float::INFINITY)
infinito.each { |i| puts i}

# Sobre escribí operadores (String, to_s)
