Feature: Admin Scope
  In order to become admin
  As an admin
  I want to see login in options

  Scenario: Sucessful login
    Given I am on the users/sign_in page
    When I fill in credentials 
    Then I am successfully logged in
  
  Scenario: Add quote
    Given I am on the new quote view
    When I add and submit my quote
    Then the quote is added to the database
  
