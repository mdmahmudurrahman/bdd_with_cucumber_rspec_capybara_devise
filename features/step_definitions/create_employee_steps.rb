
Given(/^There is a logged in user$/) do
  @user = User.create(name: "test", email: "test@test.com",
                      password: "111111")
  puts page.current_path
  puts "No path"
  visit root_path
  puts page.current_path
  visit new_user_session_path
  puts page.current_path
  fill_in "user-login-email", with: "test@test.com"
  fill_in "user-login-password", with: "111111"
  click_button("Log in")
end

And(/^Visit the new employee page$/) do
  # @user = User.create(name: "test", email: "test@test.com",
  #   password: "111111")
  # puts page.current_path
  # puts "No path"
  # visit root_path
  # puts page.current_path
  # visit new_user_session_path
  # puts page.current_path
  # fill_in "user-login-email", with: "test@test.com"
  # fill_in "user-login-password", with: "111111"
  # click_button("Log in")
  # expect(page).to have_content("Signed in successfully.")
  # puts page.current_path
  #
  #
  visit new_employee_path
  puts page.current_path
end

When(/^A user give the desired information$/) do
  fill_in "employee_name", with: "Jamal"
  fill_in "employee_email", with: "tt@t.com"
  fill_in "employee_address", with: "Bangaldesh, sylhetxajh jsad js"
end

When(/^Click the save button$/) do
  click_button("Create Employee")
  puts page.current_path
end

Then(/^The user should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content("Employee was successfully created.")
  puts page.current_path
end
