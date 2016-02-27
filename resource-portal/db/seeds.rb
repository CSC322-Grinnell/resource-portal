# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Running rake db:seed twice writes each resource twice, because the resources
# are not validated for uniqueness

# Commented out categories are sub-categories
# Categories to add to db

# Reources to add to the db
### Do not break up text in multiple lines within one attribute, because it screws with the text in the database
resources = [
    {:name => 'WIC Clinics (Well Child)', :phone_number => '800-390-5293', 
        :description_of_service => 'See Services for Expectant Mothers/New Parents for complete entry',
        :category => ['Groceries and Meals'] },
    {:name => 'SNAP (Food Stamps)', :phone_number => '641-236-3923', :category => ['Groceries and Meals'],
        :description_of_service => 'This is a DHS program. MICA can give families the application forms for this and other DHS programs.'},
    {:name => 'Grinnell Community Meal', :contact_email => 'SJAG@grinnell.edu', :category => ['Groceries and Meals'],
        :address => 'Davis Elementary School Cafeteria, 818 Hamilton Ave, Grinnell, IA 50112', 
        :description_of_service => 'Free meal prepared by community members and Grinnell College Social Justice Action Group. Open to anyone. Tuesdays, served from 5:45 to 6:15 pm; year around except for a few weeks in late summer and in mid-winter.'}
]

# To reset ID #s and re-seed database run
# bundle exec rake db:reset