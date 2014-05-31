When(/^I fill in credentials$/) do
  fill_in 'user_email', with: 'vanessakayez@aim.com'
  fill_in 'user_password', with: 'password1'
  click_button "Sign in"
end

Then(/^I am successfully logged in$/) do
  page.should have_content('New Quote')
end

Given(/^I am on the new quote view$/) do
  @quote_count = Quote.all.count
  visit '/users/sign_in'
  fill_in 'user_email', with: 'vanessakayez@aim.com'
  fill_in 'user_password', with: 'password1'
  click_button "Sign in"
  click_link 'New Quote'
end

When(/^I add and submit my quote$/) do
  fill_in 'Content', with: 'user generated quote'
  fill_in 'Author', with: 'user generated author'
  click_button 'Create Quote'
end

Then(/^the quote is added to the database$/) do
  @quote_count == (@quote_count + 1) 
end
