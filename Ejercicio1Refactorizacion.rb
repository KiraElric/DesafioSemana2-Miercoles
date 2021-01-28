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
    return "Mi nombre es #{@first_name} #{@last_name}"
  end
end

class Student < Person
  def talk
    return "Aqui es la clase de programación de Ruby?"
  end

  def introduce
    return "Hola profesor. " + super
  end
end

class Teacher < Person
  def talk
    return "Bienvenidos a la clase de programación con Ruby"
  end

  def introduce
    return "Hola alumnos. " + super
  end
end

class Parent < Person
  def talk
    return "Aqui es la reunión de apoderados?"
  end

  def introduce
    return "Hola. Soy uno de los apoderados. " + super
  end
end

person1 = Student.new("Lissette", "Urso", 27, "student")
person2 = Teacher.new("Gustavo", "Vivallos", 30, "teacher")
person3 = Parent.new("Marcelo", "Urso", 52, "parent")

puts person1.introduce
puts person2.introduce
puts person3.introduce

puts "\n"

puts person1.talk
puts person2.talk
puts person3.talk