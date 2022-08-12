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
