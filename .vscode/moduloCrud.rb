#um modulo é como uma caixa de ferramentas que pode ser chamada em outros classes. Tudo o que queremos aqui sao os metodos.

module Crud
  require 'bcrypt'
  puts "Modulo Crud ativado"

  #criei um metodo de nome CREATE_HASH_DIGEST que recebe um argumento chamado password. Se eu fizer o include MODULO na classe que chamao modulo eu nao preciso do self ou do Crud.
  def create_hash_digest(password) #outra opcao é usar o self. ou o nome do module: Crud. antes do nome do metodo para permitir que o mesmo seja lido completamente noutro arquivo após ser chamado
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

  #definir um metodo para autenticar usuarios que recebe o username e o password e eh COMPARADO a list_of_users
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && veriy_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credential were not correct"
  end
end
