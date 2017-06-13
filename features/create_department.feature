Feature: Create an employee

  Scenario: Department created successfully
    Given There is a logged in user
    And Visit the new department page
    When A user give the desired information for the department
    And Click the save button to save department
    Then The user will see "Department was successfully created."
