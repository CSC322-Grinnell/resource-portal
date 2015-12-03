Feature: Display Home Page
  
  As a young mother,
  I would like to reach the Home Page easily
  So that I can start doing my research.
  
Background: A home page has been set up
  
  Given The user is on the home page
  
Scenario: Reaching Home page from scratch
  When I type in the app's URL correctly and click enter
  Then I am taken to the Home page of the Home Page interface where I can decide what to do next
  
  

  Given that there is a button/logo on each page of the app that links to te home page.
  And that the user is in a page other than the home page:
  
Scenario: Reaching Home page from elsewhere in the website
  When I click on the button/logo
  Then I should no longer be in the button-embedded page but in the Home Page
  
  