# Steps for the admin_approve.feature file 
# I have filled in the "username" and "password" fields 
 

 
Given /the form document has been filled out with the following/ do |resource_table|
  resource_table.hashes.each do |resource|
    Resource.create!(resource)
  end
end

And /I should see the resource that was just submitted/ do 
    #code search through pending page for strings that match things in resources_table
    # page.body.should =~ /#{e1}.*#{e2}/m  ???
   Then I should see 
end

And /I select the resource with title "GC Housing"/ do
  
end

Then /the corresponding data appears on the housing resources page/ do
  
end