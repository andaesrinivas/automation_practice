#Test Automation Scenario
#Website: http://automationpractice.com/index.php
#We would like to start implementing automation for the above website. But we require some help with the following tasks. We are open to the language chosen for the framework, with the tests being done in cucumber:
#1.	Implement a simple basic framework to run the tests. We shall take your preference on the framework but would like the actual tests to be written in cucumber.
#2.	With the framework implemented, then proceed to implement 5¬¬ fully functioning tests.
#3.	Setup a Git Hub repository for this and send over a link for access.
#Your submission should be in the form of a git hub repository that you can give us access to so that we can pull down what you have done and review.

Feature: A a user I would like to see results of searching phrase


  Background: Navigate to automationpractice.com website
    When I open home page

  @srinu
  Scenario Outline:As a user I would like to use search box and be able to see results of: "<search phrase>"
    
    When I search for phrase "<search phrase>"
    And I click on search icon
    Then I can see numbers of results equals to "<expected results>"

    Examples: SCENARIO OUTLINE DATA
      | search phrase | expected results |
      | T-shirts      | 1                |
      | Blouse        | 1                |
      | Printed Dress | 5                |
    
  @srinu
  Scenario:As a user I would like to use search box with no data

    When I search for phrase ""
    And I click on search icon
    Then I should see error "Please enter a search keyword"


  @srinu
  Scenario:As a user I would like to use search box with no data

    When I search for phrase "!@#$%^"
    And I click on search icon
    Then I should see error "No results were found for your"


