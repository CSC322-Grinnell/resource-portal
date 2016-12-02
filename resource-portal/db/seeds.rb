# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# http://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf

categories = [
    {name: "Housing", tag_list: "Furniture, Clothing, Home Owners"},
    {name: "Families", tag_list: "Expectant Mothers, New Parents, Children/Youth, After School Programs, Youth Activities"},
    {name: "Elderly", tag_list: "Housing, Services, Activites, Meals on Wheels"},
    {name: "Education", tag_list: "Preschools, Schools, Education Agencies, Food in Schools"},
    {name: "Health and Medical", tag_list: "Hospitals, Health Centers, GRMC Programs, Non-GRMC Services, Dental, Vision, Support Groups, Medical Equipment, Medical Insurance, Mental Health, Substance Abuse"},
    {name: "Employment"},
    {name: "Legal"},
    {name: "Transportation"},
    {name: "Financial"},
    {name: "Domestic Violence and Sexual Assault", tag_list: "Support Groups, Mental Health"},
    {name: "Disability"},
    {name: "Food", tag_list: "Meals on Wheels, Food in Schools, Food Pantry, Community Meal, Co-op, Recipes"},
    {name: "Miscellaneous"}
]

User.create(email: "admin@example.com", password: "12345678", role: "admin")
User.create(email: "user@example.com", password: "12345678", role: "default")

# None of these are connected to categories, categories are in comments
resources = [
    {name: "WIC Clinics (Well Child)", description_of_service: "WIC gives vouchers for forumla, milk, and nutritious food supplies, and medical referrals for income-elibible pregnant women, nursing mothers, and children to give of age. Clinics are run out of the MICA office in Marshalltown. The current hours are listed below. Call in advance to sign up and to check times. In Grinnell at Light Center for Community Health: 3rd Tuesday 8:30am - 3:30pm, 4th Tuesday 8:30am - 5pm. In Brooklyn at the United Methodist Church, 3rd Monday 9am - 2pm.", 
                address: "306 4th Ave, Grinnell, IA 50112", 
                alternative_address: "603 Clay Street", phone_number: "800-390-5293", 
                alternative_phone_number: "641-753-4816"}, # Food 
    
    {name: "Grinnell Senior Center", phone_number: "641-522-5400", 
                address: "925 East St., Grinnell, IA 50112", 
                description_of_service: "Meals on Wheels and Congregate (on side) Meals", 
                tag_list: "Meals on Wheels"}, # Food
                
    {name: "Grinnell Community Meal", phone_number: "", 
                address: "Davis Elementary School Cafeteria, 818 Hamilton Ave., Grinnell", 
                contact_email: "SJAG@grinnell.edu",
                description_of_service: "Free meal prepared by community members and Grinnell College Social Justice Action Group. Open to anyone.Tuesdays, served from 5:45 to 6:15 pm; year around except for a few weeks in late summer and in mid-winter.", 
                tag_list: "Community Meal"}, # Food
                
    {name: "Food Recovery Network", phone_number: "641-236-6059", 
                address: "First Presbyterian Church, 1025 5th Ave., Grinnell", 
                description_of_service: "Prepared foods available for pick-up.Tues, Wed, Thurs: 12:00–1:00 pm. (Tues only in summer)", 
                tag_list: "Meals on Wheels"}, # Food
                
    {name: "Grinnell Food SHARE", phone_number: "641-236-3972",
                name_of_submitter: "Robin Young",
                website: "www.shareiowa.com",
                description_of_service: "Order and pay for food the first Tues. of each month at Grinnell Senior Center, 12:30 – 1:30 pm. Pick up food on 4th Sat. at St. Mary’s Religious Ed Center, 1013 Broad St., Grinnell", 
                tag_list: "Co-op"}, # Food
                
    {name: "Bountiful Baskets Food Co-op",
                website: "www.bountifulbaskets.org",
                description_of_service: "For an introduction, select the tab “New Participant Instructions” Find local information by selecting the tab “Locations” and entering IA for the state.", 
                tag_list: "Co-op"}, #Food
                
    {name: "Imagine Grinnell", phone_number: "641-236-5518", 
                address: "PO Box 344, Grinnell", 
                description_of_service: "Coordinates the Grinnell Community Garden, which offers low-cost and free growing space. Plot reservations are due in the month of March; the growing season is April through November. Also provides free summer educational programming."},
    # Food
    {name: "ISU Extension and Outreach", website: "https://spendsmart.extension.iastate.edu/recipes/", 
                description_of_service: "This website offers recipes that are low-cost and nutritious", 
                tag_list: "Recipes"}, # Food
                
    {name: "Meals on Wheels (Grinnell)", phone_number: "641-236-2612", 
                address: "925 East St. (First Baptist Church), Grinnell", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels"}, # Food
                
    {name: "Meals on Wheels (Brooklyn)", phone_number: "641-522-5400", 
                address: "122 Jackson St., Brooklyn 52211", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels"}, # Food                
                
    {name: "Montezuma Nursing and Rehab", phone_number: "641-623-5497", 
                tag_list: "Meals on Wheels"}, # Food
                
    {name: "Mid-Iowa Community Action (MICA)", phone_number: "641-236-3923", 
                address: "611 4th Ave, Grinnell", 
                description_of_service: "Operates an emergency food pantry for those in need; distributes vouchers for milk and bread provided by local churches; distributes fresh produce from local farmers. Mon – Fri, 8:30 am – 4:30 pm", 
                tag_list: "Food Pantry"} # Food
]
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
        c_id = Category.find_by(name: c)
        category_ids.push(c_id)
    end
    # Replace list of category names with categories
    resource[:category] = category_ids
    # Create resource
    Resource.create! (resource)
end