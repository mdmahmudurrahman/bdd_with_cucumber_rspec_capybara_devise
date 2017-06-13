Feature: Create an employee

Scenario: Employee created successfully
  Given Visit the new employee page
  When A user give the desired information
  And Click the save button
  Then The user should see "Employee cerated successfully"
