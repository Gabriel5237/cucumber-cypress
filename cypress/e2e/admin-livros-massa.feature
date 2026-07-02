            #language: pt

            Funcionalidade: Administração de livros Hub de Leitura
            Como administrador do sistema
            Quero adicionar, editar e remover mútiplos livros de uma só vez
            Para que eu possa gerenciar o catálogo de forma rápida e eficiente

            Cenário: Adicionar novos livros com tabela de exemplos
            Dado que eu estou na página de administrador de livros
            Quando eu adiciono novos livros com os seguintes dados:
            | titulo           | autor            | categoria | exemplares |
            | Livro de teste 1 | Autor de teste 1 | Aventura  | 2          |
            | Livro de teste 2 | Autor de teste 2 | Infantil  | 30         |
            | Livro de teste 3 | Autor de teste 3 | Romance   | 300        |
            | Livro de teste 4 | Autor de teste 1 | Fantasia  | 2          |
            | Livro de teste 5 | Autor de teste 2 | Infantil  | 30         |
            | Livro de teste 6 | Autor de teste 3 | Suspense  | 300        |
            Então deve aparecer uma mensagem: "Livro adicionado com sucesso!"
            @only
            Esquema do Cenário: Adicionar livros usando esquema do cenário - Livro: "<titulo>", Qtd "<exemplares>"
            Dado que eu estou na página de administrador de livros
            Quando eu adiciono um livro com "<titulo>", "<autor>", "<categoria>" e "<exemplares>"
            Então deve aparecer uma mensagem: "Livro adicionado com sucesso!"

            Exemplos:
            | titulo           | autor                            | categoria  | exemplares |
            | Livro de teste 1 | Autor de teste 1                 | Aventura   | 2          |
            | Li               | Autor de teste 2                 | Infantil   | 30         |
            | Livro de teste 3 | Autor de teste 3                 | Romance    | 300        |
            | Livro de teste 4 | Autor de teste com nome enorme 4 | Fantasia   | 27         |
            | Livro de teste 5 | A                                | Tecnologia | 541        |
            | Livro de teste 6 | Autor de teste 6                 | Terror     | 3000       |