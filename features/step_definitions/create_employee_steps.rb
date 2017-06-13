Given(/^Visit the new employee page$/) do
  visit new_employee_path
  puts page.current_path
end

When(/^A user give the desired information$/) do
  fill_in "name", with: "Jamal"
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
