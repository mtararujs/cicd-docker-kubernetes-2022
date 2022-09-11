Feature: Message feature
  Test the functionality for retrival of message

  Scenario: Get message by ID
    When I retrieve message with id "123"
    Then message content contains "Hello World!"