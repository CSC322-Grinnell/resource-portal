# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Running rake db:seed twice writes each resource twice, because the resources
# are not validated for uniqueness

# Commented out categories are sub-categories
# Categories to add to db
categories = [
    {:category_name => 'Housing'},
    {:category_name => 'Groceries and Meals'},
    #{:category_name => 'Meals on Wheels'},
    #{:category_name => 'Food in the Schools'},
    {:category_name => 'Employment'},
    {:category_name => 'Furniture and Clothing'},
    {:category_name => 'Services for Expectant Mothers/New Parents'},
    {:category_name => 'Services for Children/Youth and Families'},
    {:category_name => 'Youth Activities'},
    {:category_name => 'After-School Programs'},
    {:category_name => 'Other Programs and Activities'},
    {:category_name => 'Services for the Elderly'},
    #{:category_name => 'Housing'},
    #{:category_name => 'Services and Activities'},
    {:category_name => 'Education'},
    #{:category_name => 'Preschools'},
    #{:category_name => 'Schools'},
    #{:category_name => 'Education Agencies'},
    {:category_name => 'Employment Agents'},
    {:category_name => 'Health and Medical Services'},
    #{:category_name => 'Hospital and Related Health Centers'},
    #{:category_name => 'Programs at GRMC Facilities'},
    #{:category_name => 'Non-GRMC Medical Services'},
    #{:category_name => 'Dental Services'},
    #{:category_name => 'Vision'},
    #{:category_name => 'Support Groups'},
    #{:category_name => 'Medical Equipment'},
    #{:category_name => 'Medical Insurance'},
    {:category_name => 'Mental Health'},
    {:category_name => 'Substance Abuse/Support Groups'},
    {:category_name => 'Disability Services'},
    {:category_name => 'Domestic Violence/Sexual Assault'},
    {:category_name => 'Legal Services'},
    {:category_name => 'Transportation'},
    {:category_name => 'Financial Assistance'},
    {:category_name => 'Miscellaneous'}
]

# Reources to add to the db
### Do not break up text in multiple lines within one attribute, because it screws with the text in the database
resources = [
    {:title => 'WIC Clinics (Well Child)', :phone_number => '800-390-5293', 
        :description_of_service => 'See Services for Expectant Mothers/New Parents for complete entry',
        :category => ['Groceries and Meals'] },
    {:title => 'SNAP (Food Stamps)', :phone_number => '641-236-3923', :category => ['Groceries and Meals'],
        :description_of_service => 'This is a DHS program. MICA can give families the application forms for this and other DHS programs.'},
    {:title => 'Grinnell Community Meal', :contact_email => 'SJAG@grinnell.edu', :category => ['Groceries and Meals'],
        :address => 'Davis Elementary School Cafeteria, 818 Hamilton Ave, Grinnell, IA 50112', 
        :description_of_service => 'Free meal prepared by community members and Grinnell College Social Justice Action Group. Open to anyone. Tuesdays, served from 5:45 to 6:15 pm; year around except for a few weeks in late summer and in mid-winter.'}
]

# Populate database with categories
categories.each do |category|
    Category.create! (category)
end

# Populate database with resources
resources.each do |resource|
    # Get category names from resource to be created
    cat_names = resource[:category]
    # Create empty list to hold categories
    category_ids = []
    # For each category name, find the category and add to list
    cat_names.each do |c|
        c_id = Category.find_by(category_name: c)
        category_ids.push(c_id)
    end
    # Replace list of category names with categories
    resource[:category] = category_ids
    # Create resource
    Resource.create! (resource)
end

# To reset ID #s and re-seed database run
# bundle exec rake db:reset