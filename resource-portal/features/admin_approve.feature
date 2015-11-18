Feature: Admin approval feature 
  
  As an admin
  So that new information is added into the 'main' resource database 
  I want to be able to login to approve or reject pending resources 
  
Background: A form with information has been submitted for review 
    
  Given the form document has been filled out with the following
    | title      | category | address    | alternative_address | phone_number | alternative_phone_number | website      | fax_number   | contact_email         | agency_email           |
    | GC Housing | housing  | 123 GC Way | 555 GC street       | 555-555-5555 | 123-555-6505             | grinnell.com | 555-565-5555 | creaseyw@grinnell.edu | wbcreasey@grinnell.edu |
        

Scenario: I am an admin trying to login 
  Given I am on the home page 
  And I fill in "creaseyw@grinnell.edu" for "Email" 
  And I fill in "Chocolate" for "Password"
  And I press "Sign in"
  Then I should be on admin page 

Scenario: Admin sees "pending" forms on "Pending Resources" view
  Given I am on admin page
  And I press "View Pending"
  Then I should be on Pending Resources page          
  And I should see "GC Housing"

Scenario: Changing a form's "status" from "pending" to "approved"
  Given I am on Pending Resources page
  And I find the resource with title "GC Housing"                    ### Write this
  When I press "Approve"                           
  Then the corresponding data appears on the housing resources page    ### Write this 

Scenario: Changing a form's "status" from "pending" to "rejected"
  Given I am on Pending Resources page
  When I press "Reject"
 # Then the corresponding data does not appear on the website           ### Write this 


