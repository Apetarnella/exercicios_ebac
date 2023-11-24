            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que acesse a plataforma da EBAC-SHOP


            Cenário: Preenchimento dos campos de faturamento na tela de Checkout válida

            Dado que acesse a plataforma da EBAC-SHOP
            Quando eu for fazer o checkout
            E preencher todos os campos obrigatórios da tela de faturamento, deixando os campos em branco <Nome_da_empresa> e <Pais>
            Então poderá finalizar a compra

            Esquema do Cenário: Preenchimento dos campos de faturamento na tela de Checkout válida

            | Nome  | Sobrenome | Nome_da_empresa(opcional) | País   | Endereço     | Cidade    | Pais(opcional) | CEP       | Telefone       | Endereço_de_email  |
            | Romeu | Santos    | teste ebac                | Brasil | rua de teste | São Paulo | teste          | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | teste ebac                | Brasil | rua de teste | São Paulo | ""             | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | ""                        | Brasil | rua de teste | São Paulo | teste          | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | ""                        | Brasil | rua de teste | São Paulo | ""             | 99999-000 | (11)11212-2222 | teste@teste.com.br |




            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

            Dado que acesse a plataforma da EBAC-SHOP
            Quando eu for fazer o checkout
            E não preencher todos os campos obrigatórios <nome>,<Sobrenome>,<País>,<Endereco>,<Cidade>,<CEP>,<Telefone>,<email>,<mensagem>
            Então será emitido um alerta <mensagem>

            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

            | Nome    | Sobrenome | Empresa(opcional) | País     | Endereco       | Cidade      | Pais(opcional) | CEP         | Telefone         | Email                | Mensagem                                             |
            | ""      | "Santos"  | "teste ebac"      | "Brasil" | "rua de teste" | "São Paulo" | "teste"        | "99999-000" | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | ""        | "teste ebac"      | "Brasil" | "rua de teste" | "São Paulo" | "teste"        | "99999-000" | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | ""       | "rua de teste" | "São Paulo" | "teste"        | "99999-000" | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | "Brasil" | ""             | "São Paulo" | "teste"        | "99999-000" | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | "Brasil" | "rua de teste" | ""          | "teste"        | "99999-000" | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | "Brasil" | "rua de teste" | "São Paulo" | "teste"        | ""          | "(11)11212-2222" | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | "Brasil" | "rua de teste" | "São Paulo" | "teste"        | "99999-000" | ""               | "teste@teste.com.br" | "Todos os campos sinalizados* devem ser preenchidos" |
            | "Romeu" | "Santos"  | "teste ebac"      | "Brasil" | "rua de teste" | "São Paulo" | "teste"        | "99999-000" | "(11)11212-2222" | ""                   | "Todos os campos sinalizados* devem ser preenchidos" |




            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro

            Dado que acesse a plataforma da EBAC-SHOP
            Quando eu for fazer o checkout
            E preencher o campo <Email> num formato inválido
            Então o sistema deve inserir uma <Mensagem> de erro

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro

            | Email         | Mensagem                   |
            | @teste.com.br | Erro no endereço de e-mail |
            | teste@com.br  | Erro no endereço de e-mail |
            | teste@teste   | Erro no endereço de e-mail |
            | teste.com.br  | Erro no endereço de e-mail |
            | teste12%.com  | Erro no endereço de e-mail |

