#há duas formas de fazer isso: require_relative 'nome-do-arquivo' (sem o .rb mesmo)
require_relative 'moduloCrud'

=begin
#ou direto: require 'nome-do-arquivo', mas isso funcionaria se os arquivos NAO estiverem no mesmo diretorio. Neste caso,
#vc tem que adicionar seu diretocio atual, que eh o seu caminho de carregamento(LOAD_PATH)
#<< indica carregamento de sequencia e o PONTO sinal universa do diretorio atual
#OU SEJA, VOCE ESTA ADICIONANDO SEU DIRETORIO ATUAL AO SEU CAMINHO DE CARREGAMETNO E, EM SEGUIDA, VC "REQUIRE 'MODULOCRUD"
$LOAD_PATH << "."
require 'moduloCrud'
=end

users = [
    { username: "Rafael", password: "password1" },
    { username: "João", password: "password2" },
    { username: "Rafaela", password: "password3"},
    { username: "Mariana", password: "password4"},
    { username: "Pedro", password: "password5"},
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
