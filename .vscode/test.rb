#puts 'Entre com seu primeiro nome?'
#first_name = gets.chomp
#puts 'Qual seu último nome?'
#last_name = gets.chomp
#full_name = first_name + ' ' + last_name
#puts "Seu nome completo é #{first_name} #{last_name}"
#puts "Seu nome completo ao contrário é #{last_name.reverse} #{first_name.reverse}"
#puts "Seu nome tem #{full_name.length - 1} caracteres"

def multiply(first_num, second_num)
  first_num.to.f * second_num.to.f
end

puts 'Welcome to simple calculator'
20.times {  print '-'  }
puts
puts 'Enter Operand1:'
first_number = gets.chomp #gets.chomp é o metodo para que o usuario insica dados
puts 'Enter Operand2:'
second_number = gets.chomp
puts "Operand1 + Operand2 = #{first_number.to_f + second_number.to_f}"
puts "Operand1 - Operand2 = #{first_number.to_f - second_number.to_f}"
puts "Operand1 * Operand2 = #{multiply (first_number, second_number)}"
puts "Operand1 / Operand2 = #{first_number.to_f / second_number.to_f}"
puts "The remainder  after Operand1 / Operand2 = #{first_number.to_f % second_number.to_f}" #o % é o modus (o nosso famoso resto da divisão)
