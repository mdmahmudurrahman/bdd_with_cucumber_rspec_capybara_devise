Feature: Create an employee

Scenario: Employee created successfully
  Given There is a logged in user
  And Visit the new employee page
  When A user give the desired information
  And Click the save button
  Then The user should see "Employee cerated successfully"
