Feature: Add new client
  As a user
  I want to be able to add new clients

  Background:
    Given I have an account
    And I am logged in

  Scenario: Hour addition successful
    Given I am on my hours list
    And I click on New Hour
    When I fill in the add new hour form with valid data
    Then I should see the new hour at the bottom of the hour list

  Scenario: Error when end time is before starting time
    Given I am on my hours list
    And I click on New Hour
    When I fill in the add new hour form with an end time that comes before starting time
    Then I should see an error message

  Scenario: Description field blank
    Given I am on my hours list
    And I click on New Hour
    When I fill in the add new hour form with an empty description field
    Then I should see an error message

  Scenario: Client field blank
    Given I am on my hours list
    And I click on New Hour
    When I fill in the add new hour form with an empty client field
    Then I should see an error message
