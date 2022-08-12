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
