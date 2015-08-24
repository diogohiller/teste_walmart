require 'httparty'

  Given /^the user requests GET (.*)$/ do |path|
    @last_response = HTTParty.get('http://cep.correiocontrol.com.br/' + path)
  end

  Then (/^the JSON response expect "([^"]*)"$/) do |dado|
  bairro = JSON.parse(@last_response.body)
  expect(bairro).to have_content dado
  case @last_response.code
  when 200
    puts "Status Code Http 200"
  when 404
    puts "Status Code Http 404"
  when 500...600
    puts "Status Code Http #{dado.code}"
  end
end

  Then (/^the JSON response expect Http code "([^"]*)"$/) do |dado2|
  begin
  bairro = JSON.parse(@last_response.body)
  expect(bairro).to have_content dado2
  # This would also suffice by forcing the request to be parsed:
  # request.parsed_response
  rescue StandardError => e
    puts "Rescued #{e.inspect}"
  end
end