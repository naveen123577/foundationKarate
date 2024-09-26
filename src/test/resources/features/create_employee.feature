Feature: Create Employee

  Background:
    * def body = read("classpath://json//create_employees.json")

  Scenario: Verify user can create employee
    Given url host
    And path "/create"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response
