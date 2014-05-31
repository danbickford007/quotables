
Given(/^I am on the (.+) page$/) do |page|
  visit "/#{page}"
end

When(/^I have a quote (.+)$/) do |page|
  page.should have_content 'hello world'
end

Then(/^you see quote author of (.+)$/) do |quote|
  page.should have_content 'some guy'
end

Given(/^I am on the first quote$/) do
  visit '/quotes'
  page.should have_content 'hello world'
end

When(/^I click (.+)$/) do |link|
  click_link link 
end

Then(/^I see quote (.+)$/) do |quote|
  page.should have_content(quote)
end

Then(/^I see the quote last quote$/) do
  page.should have_content("last quote")
end
