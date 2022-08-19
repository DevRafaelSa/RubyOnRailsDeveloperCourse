require_relative 'moduloCrud'

class Student
include Crud
  attr_accessor :firs_name, :last_name, :email, :username, :password


  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "Fisrt name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end


rafael = Student.new("Rafael", "Sá", "rafael", "rafael@email.com", "senha1")
rafaela = Student.new("Rafaela", "Santos", "rafaela", "rafaela@email.com", "senha2")

hashed_password = rafael.create_hash_digest("password")

puts hashed_password
