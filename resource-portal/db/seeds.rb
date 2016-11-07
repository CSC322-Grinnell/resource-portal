# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Running rake db:seed twice writes each resource twice, because the resources
# are not validated for uniqueness

# Commented out categories are sub-categories
# Categories to add to db

categories = [
    {:name => 'Groceries and Meals'}
]

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


# Populate database with categories
categories.each do |category|
    Category.create! (category)
end

=begin
# Populate database with resources
resources.each do |resource|
    # Get category names from resource to be created
    cat_names = resource[:category]
    # Create empty list to hold categories
    category_ids = []
    # For each category name, find the category and add to list
    cat_names.each do |c|
        c_id = Category.find_by(name: c)
        category_ids.push(c_id)
    end
    # Replace list of category names with categories
    resource[:category] = category_ids
    # Create resource
    Resource.create! (resource)
end
=end

# To reset ID #s and re-seed database run
# bundle exec rake db:reset