# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create sample Categories in DB
Category.create(category_name: 'Housing') 
Category.create(category_name: 'Food and Groceries') 
Category.create(category_name: 'Employment') 

# To create a sample entry in DB:
#rails console
#Resource.create(name: 'GC Food', category: 'Food and Groceries', address: '123 GC Pride Way', alternative_address: '123 nono', phone_number: '555-555-5555', alternative_phone_number: '555-555-5555', website: 'google.com', fax_number: '555-555-5555', contact_email: 'wbcreasey@gmail.com')
#Resource.create(name: 'GC Housing', category: 'Housing', address: '554 Grinnell Parkway', description_of_service: 'This is a really fantastic service. I am entering in a bunch of text to see if this looks good, Zoe. Last night was Halloween so here is some more sample text with how everything is going to look. Hopefully it looks good because I do not want it to cause headaches. asdjasdkjnasdkjlnasdjklnaoi;qweoiqwioeanzmnciojjwe knjansd klnasd klnjjnk')
#control C
#rails db:seed