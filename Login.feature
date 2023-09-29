            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acessa a página de autenticação plataforma da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "carlos@estudante.com.br"
            E a senha "Carlos0477"
            Então deve me direcionar a tela de checkout

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "Errado@erro.com.br"
            E a senha "Errada123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuário
            Quando eu digitar o <cliente>
            E a <senha>
            Então deve direcionar a tela de checkout

            Exemplos:
            | cliente                      | senha         |
            | "francisco@estudante.com.br" | "correta@123" |
            | "maria@estudante.com.br"     | "correta@123" |
            | "camilly@estudante.com.br"   | "correta@123" |
            | "carlos@estudante.com.br"    | "correta@123" |
            | "vitoria@estudante.com.br"   | "correta@123" |