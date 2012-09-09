Feature: Foursquare Authentication
  So that I can receive crime stats when I checkin on Foursquare
  As a user
  I should be able to register and authenticate through my Foursquare account

  Scenario: As a new user
    Given I login using my Foursquare account
    Then I should have an account created
    And I should see my Foursquare username

  Scenario: As an existing user
    Given I have a Foursquare account
    And I am an existing user
    And I am not logged in
    When I click the Connect with Foursquare button
    Then I should see my Foursquare username
