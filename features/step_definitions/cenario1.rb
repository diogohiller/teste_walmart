﻿# encoding: utf-8

Given /^I am on the main Walmart page$/ do
 visit ('/')
end
 
When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
 fill_in(field, :with => value)
end
 
And /^I click "([^"]*)" button$/ do |button|
 click_button(button)
end

Then /^I expect to dont see "([^"]*)"$/ do |text|
 expect(page).to_not have_content(text)
end

# Eu previ que os produtos da lista de resultados da busca podem mudar sua ordem,
# mas nao consegui algum objeto que poderia receber click.
# Ex: find(:xpath, '(//li[@class="shelf-item item-0 with-buy-box"])[1]').click
And /^I click on the first result$/ do
 click_on 'Smart TV LED Full HD 43" LG 43LF6350 WebOS 3 USB 3 HDMI Wi-fi integrado'
end

# Apenas para validar o funcionamento de expect(page).to_not have_content(text)
Then /^I visit an inexistent page$/ do
 visit ('/ewre-00rrew-werw')
end
 
And /^I expect to see product price$/ do
	expect(page).to have_xpath('(//div[@class="content-wrapper"])[1]')
end

And /^I expect to see "([^"]*)"$/ do |text|
 expect(page).to have_content(text)
end

Then /^I click on buy button$/ do
 find(:xpath, '//button[@class="buy-button btn btn-success"]').click
end

And /^I click close extended insurance button$/ do
 find(:xpath, '//button[@id="navegaCarrinho"]').click
end

Then /^I visit cart page$/ do
 find(:xpath, '//a[@class="topbar-buttons open-link cart-link"]').click
end