Feature: Make transactions between entities

  Scenario: Make transactions from user to another user
    Given two users are created
    And I visit transactions page
    And choose amount recipient and given of the money
    When I make transaction
    Then I can see that transaction is successfully finished
