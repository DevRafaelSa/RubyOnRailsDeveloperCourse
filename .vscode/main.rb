=begin
puts 'Entre com seu primeiro nome?'
first_name = gets.chomp
puts 'Qual seu último nome?'
last_name = gets.chomp
full_name = first_name + ' ' + last_name
puts "Seu nome completo é #{first_name} #{last_name}"
puts "Seu nome completo ao contrário é #{last_name.reverse} #{first_name.reverse}"
puts "Seu nome tem #{full_name.length - 1} caracteres"

=end
