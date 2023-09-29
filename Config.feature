#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto, e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de configurações do produto

Cenário: Seleção válida
Quando eu configurar a cor, o tamanho e a quantidade do meu produto
E clicar no botão "comprar"
Então deve adicionar os itens no carrinho

Cenário: Seleção de configurações inválida
Quando eu tentar inserir itens no carrinho
E eu não tiver selecionado a cor, o tamanho ou quantidade
Então deve exibir uma mensagem de alerta: "Cor, Tamanho e Quantidade são obrigatórios."

Cenário: Número de produtos inválido
Quando eu escolher a quantidade de produtos
E for maior que 10 produtos
Então deve exibir uma mensagem de alerta: "Número de produtos exedido"

Cenário: Botão "limpar"
Quando eu clicar no botão "limpar"
E estiverem selecionados cor, tamanho ou quantidade
Então as seleções devem voltar ao estado original