Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for not finding the account

  Scenario: Inputting an incorrect username and too short a password shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input short password details
    When I try to login
    Then I recieve an error for my password being too short

  Scenario: Inputting an incorrect username and a password with only letters shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input only letters for the password details
    When I try to login
    Then I recieve an error for my password being only letters

  Scenario: Inputting an incorrect username and a password with only numbers shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input only numbers for the password details
    When I try to login
    Then I recieve an error for my password being only numbers

  Scenario: Inputting an incorrect username and a password that is too long shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input a password that is too long for the password details
    When I try to login
    Then I recieve an error for my password being too long

  Scenario: Inputting an invalid username and an incorrect password an error
    Given I access the BBC login page
    And I input invalid username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for my email being invalid

  Scenario: Inputting a short username and an incorrect password an error
    Given I access the BBC login page
    And I input short username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for my email being too short