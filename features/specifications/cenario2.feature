# encoding: utf-8

  Feature:
# Pesquisar CEPs e validar os campos de endereco
 
Scenario: GET a valid CEP
  When the user requests GET 13040089.json
  Then the JSON response expect "Jardim Nova Europa"
  And the JSON response expect "Rua Manoel Sylvestre de Freitas Filho"
  And the JSON response expect "13040089"
  And the JSON response expect "SP"
  And the JSON response expect "Campinas"

Scenario: GET a invalid CEP
  When the user requests GET 03040089.json
  Then the JSON response expect Http code "757"