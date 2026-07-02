#language: pt

Funcionalidade: Administrar livros no Hub de Leitura
Como um administrador do sistema Hub de Leitura
Quero adicionar, editar e remover livros 
Para que eu possa mante o catálogo atualizado

Cenário: Adicionar um novo livro
       Dado que eu estou na página de administrador de livros
       Quando eu adicionar um livro com os dados obrigatorios
       Então deve aparecer uma mensagem: "Livro adicionado com sucesso!"

Cenário: Editar um livro existente
       Dado que eu estou na página de administrador de livros
       E existe um livro listado no catálogo
       Quando eu edito os detalhes do livro
       Então deve aparecer uma mensagem de atualização: "Livro atualizado com sucesso!"

Cenário: Remover um livro existente
       Dado que eu estou na página de administrador de livros
       E existe um livro listado no catálogo
       Quando eu removo o livro do catálogo
       Então deve aparecer uma mensagem de exclusão: "Livro excluído com sucesso!"
@only
Cenário: Não permitir adicionar um livro sem preencher o título
    Dado que eu estou na página de administrador de livros
    Quando eu tento adicionar um livro sem preencher o título
    Então o campo título deve ser obrigatório     