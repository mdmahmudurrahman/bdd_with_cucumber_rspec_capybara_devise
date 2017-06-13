Given(/^User is on Home Page$/) do

  @user = User.create(name: "test", email: "test@test.com",
    password: "111111")

  puts page.current_path
  puts "No path"
  visit root_path
  puts page.current_path
end

When(/^User Navigate to LogIn Page$/) do
  visit new_user_session_path
end

When(/^User enters UserName and Password$/) do
  puts page.current_path
  fill_in "user-login-email", with: "test@test.com"
  fill_in "user-login-password", with: "111111"
  click_button("Log in")
end

Then(/^Message displayed Login Successfully$/) do
  expect(page).to have_content("Signed in successfully.")
  puts page.current_path
end
