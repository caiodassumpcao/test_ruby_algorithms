
class Personagem
  def custo_5
    puts "Criado personagem custo 5"
  end
end

heimer = Personagem.new
heimer.custo_5
sion = Personagem.new
"Sion".send(:length)
sion.send(:custo_5)

class Teste
  self.class_eval {
    define_method(:'hey there') { puts 'Hey there!'}
  }
end
foo = Teste.new
foo.send :'hey there'

class Integer
  def more
    return self + 1
  end
end
puts "Integer"
puts 3.more
puts 7.more

class Morango
  def Morango.color
    return "Vermelho"
  end
  def self.size
    return "pequeno"
  end

  class << self
    def forma
      return "Conica"
    end
  end
end
puts Morango.color
puts Morango.size
puts Morango.forma

class MyClass
  @one = 1
  def do_someting
    @one = 2
  end
  def output
    puts @one
  end
end
instance = MyClass.new
instance.output
instance.do_someting
instance.output

class MyClass2
  def initialize
    @foo = 28
  end
  def foo
    return @foo
  end
  def foo=(value)
    @foo = value
  end
end

instance = MyClass2.new
puts instance.foo
instance.foo = 999
puts instance.foo

class MyClass3
  attr_accessor :foo

  def initialize
    @foo = 28
  end
end

instance = MyClass3.new
puts instance.foo
instance.foo = 999
puts instance.foo

class MyClass4
  def initialize
    @foo = 28
  end
  def foo
    return @foo
  end
  def foo=(value)
    @foo = value.round
  end
end
instance = MyClass4.new
puts instance.foo
instance.foo = 998.4
puts instance.foo

class MyClass5
  @@value = 1
  def add_one
    @@value= @@value + 1
  end
  def value
    @@value
  end
end
instanceOne = MyClass5.new
instanceTwo = MyClass5.new
puts "Myclass5"
puts instanceOne.value
instanceOne.add_one
puts instanceOne.value
puts instanceTwo.value

class Employee
  class << self; attr_accessor :instances; end
  def store
    self.class.instances ||= []
    self.class.instances << self
  end

  def initialize name
    @name = name
  end
end
class Overhead < Employee; end
class Programmer < Employee; end
Overhead.new('Kiokem').store
Overhead.new('Caio').store
Programmer.new('Rodrigues').store
puts "Class Employee"
puts Overhead.instances.size
puts Programmer.instances.size

class MyClass6
  def self.some_method
    puts "something"
  end
end
puts "MyClass6"
MyClass6.some_method