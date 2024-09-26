Feature: Get Employee
  Background:
    * def responseOfCreateEmployeeId = call read("classpath://features/create_employee.feature")

  Scenario: Verify user can get employee
    Given url host
    And path "/employee/"+responseOfCreateEmployeeId.response.id
    When method get
    Then status 200