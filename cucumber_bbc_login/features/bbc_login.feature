Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for not finding the account

  Scenario: Inputting correct username and too short a password shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input short password details
    When I try to login
    Then I recieve an error for my password being too short

  Scenario: Inputting correct username and a password with only letters shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input only letters for the password details
    When I try to login
    Then I recieve an error for my password being only letters

  Scenario: Inputting correct username and a password with only numbers shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input only numbers for the password details
    When I try to login
    Then I recieve an error for my password being only numbers