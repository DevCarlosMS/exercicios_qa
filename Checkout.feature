            #language pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Cadastro válido
            Quando eu informar todos os dados obrigatórios
            E concluir meu cadastro
            Então deve me permitir finalizar a compra

            Cenário: Dados obrigatórios
            Quando eu informar meus dados
            E não preencher todos os campos obrigatórios, marcados com asteriscos
            Então deve exibir uma mensagem de alerta "Campos com * obrigatórios"

            Cenário: Formato inválido
            Quando eu finalizar meu cadastro
            E meu e-mail estiver no formato inválido
            Então deve inserir uma mensagem de erro "Formato de e-mail inválido"

            Cenário: Campo vazio
            Quando eu finalizar meu cadastro
            E algum campo estiver vazio
            Então deve exibir uma mensagem de alerta "Campos vazios devem ser preenchidos"

            Esquema do Cenário: Cadastro de usuário
            Quando eu digitar meus dados de <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone>, <E-mail>
            E todos campos obrigatórios estiverem preenchidos
            Então deve me permitir finalizar a compra

            Exemplos:
            | nome      | sobrenome | pais           | endereco                        | cidade     | CEP    | telefone  | email               |
            | carlos    | mauricio  | brasil         | rua onze, milanez               | contagem   | 111222 | 0000-1111 | carlos@estudante    |
            | maria     | eduarda   | alemanha       | rua quatro, oitis               | berlim     | 555788 | 9988-8888 | maria@estudante     |
            | camilly   | oliveira  | frança         | rua padre feijo, novo progresso | paris      | 515606 | 7777-4587 | francisco@estudante |
            | francisco | henrique  | reino unido    | rua g, morada nova              | londres    | 755515 | 2248-7784 | camilly@estudante   |
            | allana    | martins   | estados unidos | rua florida, sion               | washington | 529002 | 1144-2336 | allana@estudante    |
            | vinicius  | rafael    | japão          | rua d, colorado                 | toquio     | 002020 | 6969-7700 | vinicius@estudante  |