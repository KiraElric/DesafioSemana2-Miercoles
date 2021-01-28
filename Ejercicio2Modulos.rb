module Habilidades
  module Volador
    def volar
      "Estoy volandoooooo!"
    end

    def aterrizar
      "Estoy cansado de volar, voy a aterrizar"
    end
  end

  module Nadador
    def nadar
      "Estoy nadando!"
    end

    def sumergir
      "glu glub glub glu"
    end
  end

  module Caminante
    def caminar
      "Puedo caminar!"
    end
  end
end

module Alimentacion
  module Herbivoro
    def comer
      "Puedo comer plantas!"
    end
  end

  module Carnivoro
    def comer
      "Puedo comer carne!"
    end
  end
end

class Animal
  attr_reader :nombre
  def initialize(nombre)
    @nombre = nombre
  end
end

class Ave < Animal
end

class Pinguino < Ave
  include Habilidades::Nadador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Paloma < Ave
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Pato < Ave
  include Habilidades::Volador
  include Habilidades::Caminante
  include Habilidades::Nadador
  include Alimentacion::Carnivoro
end

class Mamifero < Animal
end

class Perro < Mamifero
  include Habilidades::Caminante
  include Habilidades::Nadador
  include Alimentacion::Carnivoro
end

class Gato < Mamifero
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Vaca < Mamifero
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Insecto < Animal
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Mosca < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Carnivoro
end

class Mariposa < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

class Abeja < Insecto
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro
end

pinguino = Pinguino.new("Mambo")
paloma = Paloma.new("Blanca")
pato = Pato.new("Donald")
perro = Perro.new("Firulais")
gato = Gato.new("Nova")
vaca = Vaca.new("Manchas")
mosca = Mosca.new("mosqui")
mariposa = Mariposa.new("Mari")
abeja = Abeja.new("Maya")

puts pinguino.nombre
puts pinguino.nadar
puts pinguino.sumergir
puts pinguino.comer

puts "\n"

puts paloma.nombre
puts paloma.volar
puts paloma.aterrizar
puts paloma.caminar
puts paloma.comer

puts "\n"

puts pato.nombre
puts pato.volar
puts pato.aterrizar
puts pato.nadar
puts pato.sumergir
puts pato.caminar
puts pato.comer

puts "\n"

puts perro.nombre
puts perro.nadar
puts perro.sumergir
puts perro.caminar
puts perro.comer

puts "\n"

puts gato.nombre
puts gato.caminar
puts gato.comer

puts "\n"

puts vaca.nombre
puts vaca.caminar
puts vaca.comer

puts "\n"

puts mosca.nombre
puts mosca.volar
puts mosca.aterrizar
puts mosca.caminar
puts mosca.comer

puts "\n"

puts mariposa.nombre
puts mariposa.volar
puts mariposa.aterrizar
puts mariposa.caminar
puts mariposa.comer

puts "\n"

puts abeja.nombre
puts abeja.volar
puts abeja.aterrizar
puts abeja.caminar
puts abeja.comer
