Given(/^I have logged in via (.+)$/) do |email|
  @favorite_count = Favorite.all.count
  visit '/users/sign_in'
  fill_in 'user_email', with: 'test@user.com'
  fill_in 'user_password', with: 'password1'
  click_button "Sign in"
end

When(/^I on a quote click favorite$/) do
  click_button 'Favorite' 
end

Then(/^the favorite is saved$/) do
  Favorite.all.count == (@favorite_count + 1) 
end
