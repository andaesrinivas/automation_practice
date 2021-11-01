#Test Automation Scenario
#Website: http://automationpractice.com/index.php
#We would like to start implementing automation for the above website. But we require some help with the following tasks. We are open to the language chosen for the framework, with the tests being done in cucumber:
#1.	Implement a simple basic framework to run the tests. We shall take your preference on the framework but would like the actual tests to be written in cucumber.
#2.	With the framework implemented, then proceed to implement 5¬¬ fully functioning tests.
#3.	Setup a Git Hub repository for this and send over a link for access.
#Your submission should be in the form of a git hub repository that you can give us access to so that we can pull down what you have done and review.


@searchBox
Feature: A a user I would like to see results of searching phrase


  Background: Navigate to automationpractice.com website
    When I open home page

  @non-smoke @critical @regression
  Scenario Outline:As a user I would like to use search box and be able to see results of: "<search phrase>"
    Given I can see automationpractice.com website
    When I search for phrase "<search phrase>"
    And I click on search icon
    Then I can see numbers of results equals to "<expected results>"
    And I can see that every results which have been found contains phrase "<search phrase>"

    Examples: SCENARIO OUTLINE DATA
      | search phrase | expected results |
      | T-shirts      | 1                |
      | Blouse        | 1                |
      | Printed Dress | 5                |
      | !@#$%^        | 0                |


  @non-smoke @critical @regression
  Scenario Outline: As a user I would like to use search box and be able to see results sorted by: "<sort by>"
    Given I can see automationpractice.com website
    When I search for phrase "<search phrase>"
    And I click on search icon
    And I can see numbers of results equals to "<expected results>"
    And I can see that every results which have been found contains phrase "<search phrase>"
    Then I select from Dropdown Sort by "<sort by>"
    And I can see that results are correctly sorted by "<sorted by>"

    Examples: SCENARIO OUTLINE DATA
      | search phrase | expected results | sort by              | sorted by            |
      | Printed Dress | 5                | Product Name: Z to A | Product Name: Z to A |
      | Printed Dress | 5                | Product Name: A to Z | Product Name: A to Z |
      | Printed Dress | 5                | Price: Highest first | Price: Highest first |
      | Printed Dress | 5                | Price: Lowest first  | Price: Lowest first  |




  @non-smoke @critical @regression
  Scenario Outline: As a user I would like to use search box and be able to see results of: "<search phrase>"
    Given I can see automationpractice.com website
    When I search for phrase "<search phrase>"
    And I click on search icon
    Then I can see numbers of results equals to "<expected results>"
    And I can see that every results which have been found contains phrase "<search phrase>"

    Examples: SCENARIO OUTLINE DATA
      | search phrase | expected results |
      | T-shirts      | 1                |
      | Blouse        | 1                |
      | Printed Dress | 5                |
      | !@#$%^        | 0                |


  @non-smoke @critical @regression
  Scenario Outline:As a user I would like to use search box and be able to see results sorted by: "<sort by>"
    Given I can see automationpractice.com website
    When I search for phrase "<search phrase>"
    And I click on search icon
    And I can see numbers of results equals to "<expected results>"
    And I can see that every results which have been found contains phrase "<search phrase>"
    Then I select from Dropdown Sort by "<sort by>"
    And I can see that results are correctly sorted by "<sorted by>"

    Examples: SCENARIO OUTLINE DATA
      | search phrase | expected results | sort by              | sorted by            |
      | Printed Dress | 5                | Product Name: Z to A | Product Name: Z to A |
      | Printed Dress | 5                | Product Name: A to Z | Product Name: A to Z |
      | Printed Dress | 5                | Price: Highest first | Price: Highest first |
      | Printed Dress | 5                | Price: Lowest first  | Price: Lowest first  |