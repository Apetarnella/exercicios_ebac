            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página do site EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios Válidos, e deve permitir até 10 produtos por venda

            Quando quando eu escolher o <item>, <tamanho>, <cor>, <quantidade>
            Então ao clicar em Comprar o item irá para o carrinho de compras


            Esquema do Cenário: seleções de cor, tamanho e quantidade devem ser obrigatórios válidas

            | item                          | tamanho | cor    | quantidade |
            | blusa Augusta Pullover Jacket | XS      | Blue   | 2          |
            | blusa Augusta Pullover Jacket | S       | Orange | 10         |
            | blusa Augusta Pullover Jacket | M       | Red    | 9          |
            | blusa Augusta Pullover Jacket | L       | Orange | 1          |
            | blusa Augusta Pullover Jacket | XL      | Blue   | 11         |




Cenário: Seleções de cor, tamanho e sem a seleção da quantidade dos itens obrigatórios

Quando quando eu escolher o produto blusa Augusta Pullover Jacket
E selecionar somente o tamanho XS, a cor Blue
Então ao clicar em Comprar, terá a sinalização "faltou preencher a quantidade"


Cenário: Seleções de tamanho, quantidade, e sem a seleção de cor dos itens obrigatórios

Quando quando eu escolher o produto blusa Augusta Pullover Jacket
E selecionar somente o tamanho XS, a quantidade 2
Então ao clicar em Comprar, terá a sinalização "faltou preencher a cor"


Cenário: Seleções da quantidade, da cor, e sem a seleção de tamanho dos itens obrigatórios

Quando quando eu escolher o produto blusa Augusta Pullover Jacket
E selecionar somente a cor Red, a quantidade 7
Então ao clicar em Comprar, terá a sinalização "faltou preencher o tamanho"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original

Quando quando eu escolher o produto blusa Augusta Pullover Jacket
E selecionar o cor Red, a quantidade 7, o tamanho M
Então ao clicar em Limpar deverá limpar todos os parametros
