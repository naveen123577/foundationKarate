Feature: Delete Employee
  Background:
    * def responseOfCreateEmployeeId = call read("classpath://features/create_employee.feature")

  Scenario: Verify user can delete employee
    Given url host
    And path "/delete/"+responseOfCreateEmployeeId.response.id"
    When method delete
    Then status 200
    And print response