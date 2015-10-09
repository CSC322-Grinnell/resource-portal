Feature: Display resources by category
  
  As a young mother,
  So that I can feed my family
  I would like to see where I can get inexpensive groceries or meals.
  
Background: resources have been added to the database
  
  Given the following resources exist:
  
  #put in some resources
  
  And I am on the resource portal homepage
  
Scenario: Navigate to resources about groceries and meals
  When I click on 'groceries and meals'
  Then I am taken to a list of all the groceries and meals resources