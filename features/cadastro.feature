#language: pt

Funcionalidade: Cadastro de Usuários
Sendo um novo usuário no sistema inmetrics
quero fazer um novo cadastro
para poder logar no sistema e cadastrar um novo funcionário

Cenario: Cadastro
Dado que acesso a página de cadastro
Quando envio o cadastro com nome de usuario, senha e confirme a senha
Então ele mostrará a mesagem de cadastro efetuado com sucesso

Cenario: Usuario não informado
Dado que acesso a página  de cadastro
Quando envio o cadastro apenas com a senha e confirme a senha
Então ele mostrará o alerta de erro no campo usuario: !  Campo obrigatório

Cenario: Senha não informada
Dado que acesso a página  de cadastro
Quando envio o cadastro apenas com o nome de usuario
Então ele mostrará o alerta de erro no campo senha e confirme a senha: !   Campo obrigatório

Cenario: Senhas divergentes
Dado que acesso a página  de cadastro
Quando envio o cadastro com o nome de usuario, a senha e no campo confirme a senha informo uma senha diferente
Então ele mostrará a mensagem de erro Senhas não combinam

Cenario: Sem campos preenchidos
Dado que acesso a página  de cadastro
Quando envio o cadastro sem nenhum campo preenchido
Então ele mostrará o alerta de erro no campo senha e confirme a senha: !   Campo obrigatório
