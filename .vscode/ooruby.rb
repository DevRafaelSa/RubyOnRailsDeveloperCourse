require_relative 'moduloCrud'

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
