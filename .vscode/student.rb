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
