# encoding: utf-8
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
 
And /^I click on the first result$/ do
 click_on 'Smart TV LED Full HD 43" LG 43LF6350 WebOS 3 USB 3 HDMI Wi-fi integrado'
end

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
 visit ('https://www2.walmart.com.br/checkout/content/carrinho/')
end