Given(/^Visit the new department page$/) do
  visit new_department_path
  puts page.current_path
end

When(/^A user give the desired information for the department$/) do
  fill_in "department_name", with: "test dept"
  fill_in "department_address", with: "test and test"
  fill_in "department_revenue", with: "12312"
end

When(/^Click the save button to save department$/) do
  click_button("Create Department")
end

Then(/^The user will see "([^"]*)"$/) do |arg1|
  expect(page).to have_content("Department was successfully created.")
  puts page.current_path
end
