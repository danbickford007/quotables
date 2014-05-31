Feature: Dealing with favorites
  In order to deal with favorites
  A user
  Should be able to save, remove and view favorites

  Scenario: Saving a favorite
    Given I have logged in via test@user.com
    When I on a quote click favorite
    Then the favorite is saved

  
