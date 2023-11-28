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

            Exemplos: 
            | Nome  | Sobrenome | Nome_da_empresa(opcional) | País   | Endereço     | Cidade    | Pais(opcional) | CEP       | Telefone       | Endereço_de_email  |
            | Romeu | Santos    | teste ebac                | Brasil | rua de teste | São Paulo | teste          | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | teste ebac                | Brasil | rua de teste | São Paulo | ""             | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | ""                        | Brasil | rua de teste | São Paulo | teste          | 99999-000 | (11)11212-2222 | teste@teste.com.br |
            | Romeu | Santos    | ""                        | Brasil | rua de teste | São Paulo | ""             | 99999-000 | (11)11212-2222 | teste@teste.com.br |




            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta


            Dado que acesse a plataforma da EBAC-SHOP
            Quando eu deixar de preencher algum campo obrigatório
	        Então deve exibir uma mensagem de alerta: 
            E será emitido um alerta "Todos os campos sinalizados* devem ser preenchidos" 

            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

            
            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro

            Dado que acesse a plataforma da EBAC-SHOP
            Quando no checkout, preencher o campo <Email> num formato inválido
            Então o sistema deve inserir uma <Mensagem> de erro

        
            Exemplos:

            | Email         | Mensagem                   |
            | @teste.com.br | Erro no endereço de e-mail |
            | teste@com.br  | Erro no endereço de e-mail |
            | teste@teste   | Erro no endereço de e-mail |
            | teste.com.br  | Erro no endereço de e-mail |
            | teste12%.com  | Erro no endereço de e-mail |

