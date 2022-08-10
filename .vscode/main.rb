=begin
puts 'Entre com seu primeiro nome?'
first_name = gets.chomp
puts 'Qual seu último nome?'
last_name = gets.chomp
full_name = first_name + ' ' + last_name
puts "Seu nome completo é #{first_name} #{last_name}"
puts "Seu nome completo ao contrário é #{last_name.reverse} #{first_name.reverse}"
puts "Seu nome tem #{full_name.length - 1} caracteres"


def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end

def subtract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def divider(first_num, second_num)
  first_num.to_f / second_num.to_f
end


puts 'Welcome to simple calculator'
20.times {  print '-'  }
puts
puts 'Enter Num1:'
first_number = gets.chomp #gets.chomp é o metodo para que o usuario insica dados
puts 'Enter Num2:'
second_number = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp
if user_entry == "1"
  puts "You have choses to multiply and the result is #{multiply(first_number, second_number)}"
elsif user_entry == "2"
  puts "You have choses to add and the result is #{add(first_number, second_number)}"
elsif user_entry == "3"
  puts "You have choses to subtract and the result is #{subtract(first_number, second_number)}"
else
  puts "Invalid entry"
end


puts "Operand1 + Operand2 = #{add(first_number, second_number)}"
puts "Operand1 - Operand2 = #{subtract(first_number, second_number)}"
puts "Operand1 * Operand2 = #{multiply(first_number, second_number)}"
puts "Operand1 / Operand2 = #{divider(first_number, second_number)}"
puts "The remainder  after Number1 / Number2 = #{first_number.to_f % second_number.to_f}" #o % é o modus (o nosso famoso resto da divisão)


condition = false
other_condition = false

if !condition && !other_condition
  puts "this evaluated to true"
else
  puts "this evaluates to false"
end
puts "la la la"


#Arrays
#p a.methods #para ver todos os metodos disponiveis

#Hash - tambem conhecido como dicionários, trabalhando com pares de valor entre chaves;
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'rafael', 'favcolor' => 'blue'}
p my_details['favcolor']
p sample_hash['b']

another_hash = {a: 1, b: 2, c: 3} #sao simbolos, geralmente usados em algo que não necessariamente você queira mudar, como um atributo ou referência a atributos
another_hash[:a] #chamando um simbolo

sample_hash.keys #somente as chaves
sample_hash.values #apenas valores
sample_hash.each do |key, value|
  puts "the class for key is #{key.class} and the value is #{value.class}"
end

myhash = {a: 1, b: 2, c: 3, d: 4}
myhash [:e] = "Rafael"

myhash.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}" }
myhash.select { |k, v| v.is_a?(String)}


Estilo em Ruby

métodos e atributos de variáveis são escritos com snake_case. Ex.: this_is_snake_case OU also_snake_case (com underlines separando palavras de modo que fiquem mais descritivas)

def my_name_is
  # and my code is here
end

Identação em Ruby são dois espaços, e nao 4 como nas outras linguagens;

Para o caso de nomes de classes usamos CamelCase, onde as palavras sao juntas e a primeira é maiúscula
Ex: ApplicationController
class SomeClass
  cod here
end

Ruby Style Guide com dicas: https://github.com/airbnb/ruby
=end

#Estudo de Orientação a Objetos com Ruby

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password #attr_accessor ja implica os getters e setters

  #agora eh preciso inicializar os atributos e linkar com as variaveis dentro do bloco
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  #definino um metodo de exibicao dos atributo
  def to_s
    "Fisrt name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end

rafael = Student.new("Rafael", "Sá", "rafael", "rafael@exemplo.com", "senha1")
rafaela = Student.new("Rafaela", "Santos", "rafaela", "rafaela@exemplo.com", "senha2")

puts rafael
puts rafaela
rafael.last_name = rafaela.last_name
puts "Rafael foi alterado"
puts rafael
