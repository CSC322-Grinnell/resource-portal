# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# http://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf

categories = [
    {name: "Housing", tag_list: "Furniture, Clothing, Home Owners, Income-Based, Families, Elderly, Disabled"},
    {name: "Families", tag_list: "Expectant Mothers, New Parents, Children/Youth, After School Programs, Youth Activities"},
    {name: "Elderly", tag_list: "Housing, Services, Activites, Meals on Wheels, Income-Based"},
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
    # FOOD
    {name: "WIC Clinics (Well Child)", description_of_service: "WIC gives vouchers for forumla, milk, and nutritious food supplies, and medical referrals for income-elibible pregnant women, nursing mothers, and children to give of age. Clinics are run out of the MICA office in Marshalltown. The current hours are listed below. Call in advance to sign up and to check times. In Grinnell at Light Center for Community Health: 3rd Tuesday 8:30am - 3:30pm, 4th Tuesday 8:30am - 5pm. In Brooklyn at the United Methodist Church, 3rd Monday 9am - 2pm.", 
                address: "306 4th Ave, Grinnell, IA 50112", 
                alternative_address: "603 Clay Street", phone_number: "800-390-5293", 
                alternative_phone_number: "641-753-4816"},  
    
    {name: "Grinnell Senior Center", phone_number: "641-522-5400", 
                address: "925 East St., Grinnell, IA 50112", 
                description_of_service: "Meals on Wheels and Congregate (on side) Meals", 
                tag_list: "Meals on Wheels"}, 
                
    {name: "Grinnell Community Meal", phone_number: "", 
                address: "Davis Elementary School Cafeteria, 818 Hamilton Ave., Grinnell", 
                contact_email: "SJAG@grinnell.edu",
                description_of_service: "Free meal prepared by community members and Grinnell College Social Justice Action Group. Open to anyone.Tuesdays, served from 5:45 to 6:15 pm; year around except for a few weeks in late summer and in mid-winter.", 
                tag_list: "Community Meal"},
                
    {name: "Food Recovery Network", phone_number: "641-236-6059", 
                address: "First Presbyterian Church, 1025 5th Ave., Grinnell", 
                description_of_service: "Prepared foods available for pick-up.Tues, Wed, Thurs: 12:00–1:00 pm. (Tues only in summer)", 
                tag_list: "Meals on Wheels"},
                
    {name: "Grinnell Food SHARE", phone_number: "641-236-3972",
                name_of_submitter: "Robin Young",
                website: "www.shareiowa.com",
                description_of_service: "Order and pay for food the first Tues. of each month at Grinnell Senior Center, 12:30 – 1:30 pm. Pick up food on 4th Sat. at St. Mary’s Religious Ed Center, 1013 Broad St., Grinnell", 
                tag_list: "Co-op"}, 
                
    {name: "Bountiful Baskets Food Co-op",
                website: "www.bountifulbaskets.org",
                description_of_service: "For an introduction, select the tab “New Participant Instructions” Find local information by selecting the tab “Locations” and entering IA for the state.", 
                tag_list: "Co-op"},
                
    {name: "Imagine Grinnell", phone_number: "641-236-5518", 
                address: "PO Box 344, Grinnell", 
                
                description_of_service: "Coordinates the Grinnell Community Garden, which offers low-cost and free growing space. Plot reservations are due in the month of March; the growing season is April through November. Also provides free summer educational programming."},
    {name: "ISU Extension and Outreach", website: "https://spendsmart.extension.iastate.edu/recipes/", 
                description_of_service: "This website offers recipes that are low-cost and nutritious", 
                tag_list: "Recipes"},
                
    {name: "Meals on Wheels (Grinnell)", phone_number: "641-236-2612", 
                address: "925 East St. (First Baptist Church), Grinnell", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels"}, 
                
    {name: "Meals on Wheels (Brooklyn)", phone_number: "641-522-5400", 
                address: "122 Jackson St., Brooklyn 52211", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels"},               
                
    {name: "Montezuma Nursing and Rehab", phone_number: "641-623-5497", 
                tag_list: "Meals on Wheels"},
                
    {name: "Mid-Iowa Community Action (MICA)", phone_number: "641-236-3923", 
                address: "611 4th Ave, Grinnell", 
                description_of_service: "Operates an emergency food pantry for those in need; distributes vouchers for milk and bread provided by local churches; distributes fresh produce from local farmers. Mon – Fri, 8:30 am – 4:30 pm", 
                tag_list: "Food Pantry"},
    # HOUSING
    {name: "Grinnell Housing Authority", phone_number: "641-236-2611",
                address: "927 4th Avenue, Grinnell, IA 50112",
                contact_email: "rentassist@iowatelecom.net",
                description_of_service: "Rent assistance for income-eligible elderly, disabled, and families, funded by HUD. Eligible families select their own rental units anywhere in Poweshiek County. Applications are accepted continuously."},
    
    {name: "Fair Housing", phone number: "800-669-3247", description_of_service: "Deals with issues of discrimination and with landlord-tenant issues."},
    
    {name: "Arbors Apartments", phone_number: "641-236-9233", 
                description_of_service: "Income-based Housing for Families",
                address: "401 Washington Avenue, 2 & 3 BR, Grinnell, IA 50112" 
                tag_list: "Income-Based, Families"},
    
    {name: "Center Street Apartments", phone_number: "641-236-6679", 
                description_of_service: "Income-based Housing for Families",
                address: "506 Center Street, 2 BR, Grinnell, IA 50112" 
                tag_list: "Income-Based, Families"},
                
    {name: "Grinnell Park Apartments", phone_number: "800-394-1288", 
                description_of_service: "Income-based Housing for Families",
                address: "223 4th Avenue West, 1 & 2 BR, Grinnell, IA 50112" 
                tag_list: "Income-Based, Families"},
    
    {name: "Spaulding Lofts", phone_number: "515-221-6696", 
                description_of_service: "Income-based Housing for Families or Elderly and Disabled (in Grinnell)",
                address: "827 4th Avenue, 1 & 2 BR, Grinnell, IA 50112" 
                tag_list: "Income-Based, Families, Elderly"},
                
    {name: "Westfield Apartments", phone_number: "641-236-8909", 
                address: "308 4th Avenue West, 1 & 2 BR, Grinnell, IA 50112" 
                tag_list: "Income-Based, Families"},

    {name: "Grinnell Area Housing", phone_number: "641-236-6679",
                description_of_service: "Income-based Housing for Elderly and Disabled (in Grinnell): Brookside East, Brookside West 131 Fourth Avenue West, Brookside South 214 Fourth Avenue West, Monropark Apartments, Pearl Street Apartments 729 Pearl St., Poynter Apartments (for CMI) 412 Third Avenue",
                address: " 214 4th Avenue W., Grinnell, IA 50112",
                tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Grinnell Estates", address: "2020 West St., Grinnell, IA",
                description_of_service: "Income-based Housing for Elderly and Disabled (in Grinnell)",
                phone_number: "641-236-0102", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Barnes City Housing, Financial Service Group, Inc",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Brooklyn Housing, Inc., Karen McNaul",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-623-5026", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Deep River Housing, Financial Service Group, Inc",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Malcom Manor, Karen McNaul",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-623-5026", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Montezuma, Sunny View Square, Grinnell Area Housing",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-236-6679", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Searsboro Manor Apartments, Financial Service Group, Inc",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Victor Senior Housing, National Management",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "515-223-0300", tag_list: "Income-Based, Elderly, Disabled"},
    
    {name: "Salvation Army Poweshiek County Service Extension Unit #261",
                phone_number: "641-623-3275", address: "303 E. Washington, Montezuma",
                description_of_service: "Call for information on family service shelter or help with eviction"},
                
    {name: "Iowa Finance Authority", phone_number: "515-725-4900",
                description_of_service: "Services may include down payment assistance for both first-time home buyers and previous homeowners. Military Homeownership Assistance programs. Some grant funds may also be available.",
                website: "www.iowafinanceauthority.gov/Programs/Affordable-Homeownership",
                address: "2015 Grand Ave., Des Moines, Iowa 50312", tag_list: "Home Owners"},
    
    {name: "REGION 6 Housing Trust Fund", phone_number: "641-752-0717",
                description_of_service: "Income-based funding for new home buyers, existing home owners, rental property owners, and other affordable housing projects may qualify.",
                website: "www.region6planning.org/housing_trust_fund", tag_list: "Home Owners"},
                
    {name: "Single Family Home Loan Guarantees", phone_number: "515-284-4667",
                description_of_service: "Program assists approved lenders in providing low- and moderate-income households the opportunity to own a home. Work directly with approved lender.",
                website: "www.rd.usda.gov/programs-services/single-family-housing-guaranteed-loan-program/ia", tag_list: "Home Owners, Families"},
    
    {name: "Single Family Housing Direct Home Loans", phone_number: "641-932-3031",
                description_of_service: "Program assists low- and very-low-income applicants obtain homeownership. Contact local USDA office – Poweshiek County Area 5. Contact Albia Area Office",
                website: "www.rd.usda.gov/programs-services/single-family-housing-direct-home-loans/ia", tag_list: "Home Owners, Families"},
    
    {name: "Weatherization program", phone_number: "641-236-3923",
                description_of_service: "To apply for this government-funded program, applicants must first apply for LIHEAP. Even if income is above limit for LIHEAP, you may qualify for weatherization. Funds are both for home owners and for renters. Applications are accepted year-around.", 
                tag_list: "Home Owners"},
    
    {name: "Hometown Energy Fund", phone_number: "866-255-4268)",
                description_of_service: "This program is for home owners whose income falls within the federal guidelines of 200 – 300% poverty, and who receive both gas and electric from Alliant Energy. Applicants pays 10% of cost of energy savings upgrade and Alliant pays 90%. Applications are accepted when funds are available. Call MICA (641-236-3923) for information and to apply",
                website: "www.AlliantEnergy.com", tag_list: "Home Owners"},
                
    {name: "Second Mile", phone_number: "641-236-7892", address: "515 3rd Ave., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used clothing, furniture, and much more. Contact: Deanna Vogt.",
                tag_list: "Furniture, Clothing"},
                
    {name: "Goodwill Industries", phone_number: "641-236-7312", address: "230 West St., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used clothing and furniture",
                tag_list: "Furniture, Clothing"},
    
    {name: "Anderson's Used Furniture", phone_number: "641-236-3466", address: "1018 Washington Ave., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used furniture. Open Fri. 1 – 6 pm and Sat. 9 am – 5 pm",
                tag_list: "Furniture"},
    
    {name: "Phase II Consignment", phone_number: "641-236-8126", address: "912 Main St., Grinnell, IA 50112", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing"},
    
    {name: "Montezuma Free Clothes Closet", phone_number: "641-623-3275", address: "411 E Main, Montezuma, IA", 
                description_of_service: "Mon. 10:00 am – 12:30 pm, Wed. 2:00 – 4:30 pm, Thurs. 4:30 – 6:30 pm. Every 3rd Sat., 10:00 am – Noon",
                tag_list: "Clothing"},
    
    {name: "Tracy's Treasures", phone_number: "641-990-2944", address: "403 E. Main St., Montezuma, IA", 
                description_of_service: "Mostly clothes, but call to check if she has furniture",
                tag_list: "Furniture, Clothing"},
    
    {name: "White's Consignment", phone_number: "641-623-2208", address: "806 S. Front St., Montezuma, IA", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing"},
    
    {name: "Once and Again Consignment", phone_number: "641-522-2333", address: "102 N. Orchard St., Brooklyn, IA", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing"},
    
    {name: "Salvation Army Poweshiek County Service Extension #261", phone_number: "641-623-3275", address: "303 E. Washington, Montezuma, IA", 
                description_of_service: "Consignment", website: "www.centralusa.salvationarmy.org",
                tag_list: "Furniture, Clothing"},
    
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