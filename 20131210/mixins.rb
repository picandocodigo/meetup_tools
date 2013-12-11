# -*- coding: utf-8 -*-
class Charmander
  def initialize(name, hp = 39)
    @name = name
    @hp = hp
  end

  def scratch
    puts "Scratch opponent"
  end

  def growl
    puts "Growl at opponent"
  end
end

module Fire
  def ember
    puts "Throw fire from tail at opponent"
  end
  def firespin
    puts "Spin around opponent throwing fire at it"
  end
end

pokemon = Charmander.new("Horacio", 40)

pokemon.scratch
pokemon.growl

class Charmander
  include Fire
end

pokemon.ember
pokemon.firespin
# Este ejemplo fue mucho más divertido en vivo explicando cada cosa de
# los Pokemones...
