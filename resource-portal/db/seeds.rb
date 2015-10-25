# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(category_name: 'Housing') 
Category.create(category_name: 'Food and Groceries') 
Category.create(category_name: 'Employment') 

Resource.create(title: 'GC Food', category: 'Food and Groceries', address: '123 GC Pride Way', alternative_address: '123 nono', 
phone_number: '555-555-5555', alternative_phone_number: '555-555-5555', website: 'google.com', fax_number: '555-555-5555', 
contact_email: 'wbcreasey@gmail.com')