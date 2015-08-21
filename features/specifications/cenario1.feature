# encoding: utf-8

  Feature:
# Pesquisar o termo 'tv' na busca
# Validar que a busca teve resultados
# Clicar em um dos resultados e validar que a pagina do produto abriu corretamente
# Adicionar o produto ao carrinho, 
# Abrir o carrinho e validar que o mesmo foi adicionado com sucesso.
 
Scenario: Pesquisa, validacoes e adicao de produto ao carrinho
 Given I am on the main Walmart page
 When I fill in "suggestion-search" with "tv"
 And I click "Procurar" button
 Then I expect to dont see "nenhum resultado"
 And I click on the first result
# Desculpe, nao consegui mudar o encoding. ç
 Then I expect to dont see "o foi encontrada."
 And I expect to see product price
 And I expect to see "LG 43LF6350 WebOS 3 USB 3 HDMI Wi-fi integrado"
 Then I click on buy button
 And I click close extended insurance button
 Then I visit cart page
 And I expect to see "LG 43LF6350 WebOS 3 USB 3 HDMI Wi-fi integrado"