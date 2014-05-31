Feature: View Quotes
  In order to view a quote
  As a user
  I want to see a quote 

  Scenario: Shows a quote
    Given I am on the quotes page
    When I have a quote text hello world
    Then you see quote author of some guy 
  
  Scenario: Shows next quote
    Given I am on the first quote
    When I click Next 
    Then I see quote next quote 
  
  Scenario: Shows previous quote
    Given I am on the first quote
    When I click Previous
    Then I see the quote last quote 
  
