Feature: Update Employee
  Background:
    * def body = read("classpath://json//update_resource.json")
    * def responseOfCreateEmployeeId = call read("classpath://features/create_employee.feature")

  Scenario: Verify user can update employee
    Given url host
    And path "/update/"+responseOfCreateEmployeeId.response.id
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method put
    Then status 200
    And print response