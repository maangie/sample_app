Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^he submits invalid signin information$/ do
  click_button 'Sign in'
end

Then /^he should see an error message$/ do
  expect(page).to have_error_message
end

Given /^the user has an account$/ do
  @user = User.create(name: 'Example User', email: 'user@example.com',
                      password: 'foobar', password_confirmation: 'foobar')
end

When /^the user submits valid signin information$/ do
  valid_signin @user
end

Then /^he should see his profile page$/ do
  expect(page).to have_title @user.name
end

Then /^he should see a signout link$/ do
  expect(page).to have_link 'Sign out', href: signout_path
end