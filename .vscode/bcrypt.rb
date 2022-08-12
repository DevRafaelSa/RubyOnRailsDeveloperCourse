require 'bcrypt'

#criando uma senha usando o metodo de criação do bcrypt que está me dando uuma string aleatória.
my_password = BCrypt::Password.create("my password") #

puts my_password

#criei um metodo de nome CREATE_HASH_DIGEST que recebe um argumento chamado password
def create_hash_digest(password)
  BCrypt::Password.create(password) #ao chamar o metodo e inserir um password o bcrypt entrara em acao para "baguncar" a senha
end

#criei uma variavel que chama o metodo e insere uma senha qualquer
new_password = create_hash_digest("password1")
#ao imprimir o q esta inserido na variavel recebo o hash_digest.
puts new_password
#no entanto se eu comprar os valores a resposta é true
puts new_password == "password1"


#--------------------------------------------------------------------------------------------------

require 'bcrypt'

#criei um array com usuários
users = [
      { username: "Rafael", password: "password1" },
      { username: "João", password: "password2" },
      { username: "Rafaela", password: "password3"},
      { username: "Mariana", password: "password4"},
      { username: "Pedro", password: "password5"},
]

#criei um metodo de nome CREATE_HASH_DIGEST que recebe um argumento chamado password
def create_hash_digest(password)
  BCrypt::Password.create(password) #ao chamar o metodo e inserir um password o bcrypt entrara em acao para "baguncar" a senha
end

#criei um metodo de nome para verifiar um password
def veriy_hash_digest(password)
  BCrypt::Password.new(password) #
end

#cria o metodo de vificacao segura de usuarios que recebe um argumento chamado list_of_users
def create_secure_users(list_of_users)
  list_of_users.each do |user_record| #uso o list_of_users para passear na lista usando o argumento user_record
    user_record[:password] = create_hash_digest(user_record[:password]) #user_record recebe o simbolo :password (que eh o que queremos), que depois eh é recebido enquanto parametro do metodo create_hash_digest para 'camulhar' as senhas
  end
  list_of_users #retorna list_of_users
end

#cria nova matriz de usuários com as senha em hash - versao em hash de users
new_users =  create_secure_users(users)
#imprimi a versao hash das senhas dos users (metodo creat_secure_users)
puts new_users

#definir um metodo para autenticar usuarios que recebe o username e o password e eh COMPARADO a list_of_users
def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && veriy_hash_digest(user_record[:password]) == password
      return user_record
    end
  end
  "Credential were not correct"
end

p authenticate_user("Rafael", "password1", new_users)
