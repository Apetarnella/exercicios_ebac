            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto: Dado que eu acesso a página de autenticação da plataforma da EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout

            Quando quando eu digitar <usuario>
            E <senha>
            Então deve dar a <Mensagem> de inválidos

            Esquema do Cenário: Autenticação plataforma Ebac-Shop Válida

            | usuario                | senha     | direcionamento |
            | teste_as@teste.com.br  | 123142    | Tela checkout  |
            | teste.123@teste.com.br | Aio/@*142 | Tela checkout  |
            | teste@teste.com        | 12%3142   | Tela checkout  |
            | teste@teste.com.br     | 12%mm142  | Tela checkout  |


            Esquema do Cenário: Autenticação plataforma Ebac-Shop Inválida

            | usuario            | senha     | Mensagem                   |
            | teste1@ebac.com.br | 258665    | Usuário ou senha inválidos |
            | ""                 | Aio/@*142 | Usuário ou senha inválidos |
            | teste@teste.com.br | ""        | Usuário ou senha inválidos |
