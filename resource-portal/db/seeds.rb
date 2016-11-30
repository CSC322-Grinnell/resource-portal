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