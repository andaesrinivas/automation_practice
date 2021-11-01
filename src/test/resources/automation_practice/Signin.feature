
Feature: As a QA, I would like to verify all negative scenarios for login


  Background: Navigate to automationpractice.com website
    When I open home page

  Scenario Outline: Submit Login form with correct username and incorrect password
    And I navigate to login page
    When I attempt to login with "<username>" and "<password>"
    Then my login attempt should fail with wrong password "<error>"
    Examples:
      | username           | password  | error                 |
      | test1237@gmail.com | summer777 | Authentication failed |

@s
  Scenario Outline: Submit Login form with incorrect username and correct password
    And I navigate to login page
    When I attempt to login with "<username>" and "<password>"
    Then my login attempt should fail with wrong username "<error>"
    Examples:
      | username           | password | error                 |
      | test1234@gmail.com | summer77 | Authentication failed |


  Scenario Outline: Submit Login form with incorrect username and incorrect password
    And I navigate to login page
    When I attempt to login with "<username>" and "<password>"
    Then my login attempt should fail with wrong username and password "<error>"
    Examples:
      | username           | password | error                 |
      | test1234@gmail.com | summer77 | Authentication failed |

