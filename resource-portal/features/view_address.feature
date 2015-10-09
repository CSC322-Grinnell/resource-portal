Feature: See the address
  
  As a counselor,
  So that I can direct someone towards a housing resource,
  I would like to see the address of that resource
  
Background: Resources have been added to the database
     
  Given I am in the housing resource page
  

  And I am looking at the right agency resource
  
Scenario: Navigate to the address of corresponding housing resource
   When I have navigated to the correct agency
   Then I want to see the agency's address listed with it too 