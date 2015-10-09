Feature: Admin approval feature 
  
  As an admin
  So that new information is added into the 'main' resource database 
  I want to be able to approve,reject, or pend  incoming resources 
Background: A form with information has been submitted for review 
    
  Given: The form document has been filled out and the database category exists:
    # Document . . . ?
    
  And I am on the admin page 

#Scenarios : approve, reject , pend?
# if approved : assert that the  main 'resource_table' has been updated, assert that the request_table has been updated to say 'checked' 
# assert that the request table says whether its been approved , rejected or pending.
#
#if declined, update the request_table accordingly
#if pending, update the request_table accordingly

Scenario: Navigate to the form needing approval
  When I click the 'Approve' button
  Then The data in the approved form is added to the database and appears on the website


Scenario: When 