# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# http://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf

Category.create(name: "Housing", tag_list: "Furniture, Clothing, Home Owners")
Category.create(name: "Families", tag_list: "Expectant Mothers, New Parents, Children/Youth, After School Programs, Youth Activities")
Category.create(name: "Elderly", tag_list: "Housing, Services, Activites, Meals on Wheels")
Category.create(name: "Education", tag_list: "Preschools, Schools, Education Agencies, Food in Schools")
Category.create(name: "Health and Medical", tag_list: "Hospitals, Health Centers, GRMC Programs, Non-GRMC Services, Dental, Vision, Support Groups, Medical Equipment, Medical Insurance, Mental Health, Substance Abuse")
Category.create(name: "Employment")
Category.create(name: "Legal")
Category.create(name: "Transportation")
Category.create(name: "Financial")
Category.create(name: "Domestic Violence and Sexual Assault", tag_list: "Support Groups, Mental Health")
Category.create(name: "Disability")
Category.create(name: "Food", tag_list: "Meals on Wheels, Food in Schools, Food Pantries")
Category.create(name: "Miscellaneous")

User.create(email: "admin@example.com", password: "12345678", role: "admin")
User.create(email: "user@example.com", password: "12345678", role: "default")


# None of these are connected to categories, categories are in comments
Resource.create(name: "WIC Clinics (Well Child)", description_of_service: "WIC gives vouchers for forumla, milk, and nutritious food supplies, and medical referrals for income-elibible pregnant women, nursing mothers, and children to give of age. Clinics are run out of the MICA office in Marshalltown. The current hours are listed below. Call in advance to sign up and to check times. In Grinnell at Light Center for Community Health: 3rd Tuesday 8:30am - 3:30pm, 4th Tuesday 8:30am - 5pm. In Brooklyn at the United Methodist Church, 3rd Monday 9am - 2pm.", 
                address: "306 4th Ave, Grinnell, IA 50112", 
                alternative_address: "603 Clay Street", phone_number: "800-390-5293", 
                alternative_phone_number: "641-753-4816") # Food
Resource.create(name: "Grinnell Senior Center", phone_number: "641-522-5400", 
                address: "925 East St., Grinnell, IA 50112", 
                description_of_service: "Meals on Wheels and Congrgate (on side) Meals", 
                tag_list: "Meals on Wheels") # Food