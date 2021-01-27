class Person
  attr_accessor :first, :last, :age, :type
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end

  def birthday
    @age += 1
  end

  def introduce
    "Mi nombre es #{@first_name} #{@last_name}"
  end
end

class Student < Person
  def talk
    puts "Aqui es la clase de programación de Ruby?"
  end

  def introduce
    puts "Hola profesor. " + super
  end
end

class Teacher < Person
  def talk
    puts "Bienvenidos a la clase de programación con Ruby"
  end

  def introduce
    puts "Hola alumnos. " + super
  end
end

class Parent < Person
  def talk
    puts "Aqui es la reunión de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. " + super
  end
end

person1 = Student.new("Lissette", "Urso", 27, "student")
person2 = Teacher.new("Gustavo", "Vivallos", 30, "teacher")
person3 = Parent.new("Marcelo", "Urso", 52, "parent")

person1.introduce
person2.introduce
person3.introduce

puts "\n"

person1.talk
person2.talk
person3.talk