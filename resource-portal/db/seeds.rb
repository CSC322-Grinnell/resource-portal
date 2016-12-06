# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# http://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf

categories = [
    {name: "Housing", tag_list: "Furniture, Clothing, Home Owners, Income-Based, Families, Elderly, Disabled"},
    {name: "Families", tag_list: "Expectant Mothers, New Parents, Children/Youth, After School Programs, Youth Activities"},
    {name: "Elderly", tag_list: "Housing, Services, Activites, Meals on Wheels, Income-Based"},
    {name: "Education", tag_list: "Preschool, Elementary School, Middle School, High School, Education Agencies, Food in Schools, School District"}, 
    {name: "Health and Medical", tag_list: "Hospitals and Health Centers, Non-GRMC Services, GRMC Programs, Dental, Vision, Support Groups, Medical Equipment, Medical Insurance, Mental Health, Substance Abuse"},
    {name: "Employment", tag_list: "Job, Hotline"},
    {name: "Legal", tag_list: "Law,Referral"},
    {name: "Transportation"},
    {name: "Financial"},
    {name: "Domestic Violence and Sexual Assault", tag_list: "Support Groups, Mental Health"},
    {name: "Disability"},
    {name: "Food", tag_list: "Meals on Wheels, Food in Schools, Food Pantry, Community Meal, Co-op, Recipes"},
    {name: "Miscellaneous"}
]

User.create(email: "admin@example.com", password: "12345678", role: "admin")
User.create(email: "user@example.com", password: "12345678", role: "default")

# REQUIRED: name, description_of_service, categories: [''], address
resources = [
    
    # FOOD
    {name: "WIC Clinics (Well Child)", description_of_service: "WIC gives vouchers for forumla, milk, and nutritious food supplies, and medical referrals for income-elibible pregnant women, nursing mothers, and children to give of age. Clinics are run out of the MICA office in Marshalltown. The current hours are listed below. Call in advance to sign up and to check times. In Grinnell at Light Center for Community Health: 3rd Tuesday 8:30am - 3:30pm, 4th Tuesday 8:30am - 5pm. In Brooklyn at the United Methodist Church, 3rd Monday 9am - 2pm.", 
                address: "306 4th Ave, Grinnell, IA 50112", 
                alternative_address: "603 Clay Street", phone_number: "800-390-5293", 
                alternative_phone_number: "641-753-4816",
                categories: ['Food']},
                
    {name: "Grinnell Senior Center", phone_number: "641-522-5400", 
                address: "925 East St., Grinnell, IA 50112", 
                description_of_service: "Meals on Wheels and Congregate (on side) Meals", 
                tag_list: "Meals on Wheels",
                categories: ['Food']}, 
                
    {name: "Grinnell Community Meal",
                address: "Davis Elementary School Cafeteria, 818 Hamilton Ave., Grinnell", 
                contact_email: "SJAG@grinnell.edu",
                description_of_service: "Free meal prepared by community members and Grinnell College Social Justice Action Group. Open to anyone.Tuesdays, served from 5:45 to 6:15 pm; year around except for a few weeks in late summer and in mid-winter.", 
                tag_list: "Community Meal",
                categories: ['Food']},
                
    {name: "Food Recovery Network", phone_number: "641-236-6059", 
                address: "First Presbyterian Church, 1025 5th Ave., Grinnell", 
                description_of_service: "Prepared foods available for pick-up.Tues, Wed, Thurs: 12:00–1:00 pm. (Tues only in summer)", 
                tag_list: "Meals on Wheels",
                categories: ['Food']},
                
    {name: "Grinnell Food SHARE", phone_number: "641-236-3972",
                name_of_submitter: "Robin Young",
                website: "www.shareiowa.com", address: "n/a",
                description_of_service: "Order and pay for food the first Tues. of each month at Grinnell Senior Center, 12:30 – 1:30 pm. Pick up food on 4th Sat. at St. Mary’s Religious Ed Center, 1013 Broad St., Grinnell", 
                tag_list: "Co-op",
                categories: ['Food']}, 
                
    {name: "Bountiful Baskets Food Co-op",
                website: "www.bountifulbaskets.org", address: "n/a",
                description_of_service: "For an introduction, select the tab “New Participant Instructions” Find local information by selecting the tab “Locations” and entering IA for the state.", 
                tag_list: "Co-op",
                categories: ['Food']},
                
    {name: "Imagine Grinnell", phone_number: "641-236-5518", 
                address: "PO Box 344, Grinnell",
                categories: ['Food'], 
                description_of_service: "Coordinates the Grinnell Community Garden, which offers low-cost and free growing space. Plot reservations are due in the month of March; the growing season is April through November. Also provides free summer educational programming."},
                
    {name: "ISU Extension and Outreach", website: "https://spendsmart.extension.iastate.edu/recipes/", 
                description_of_service: "This website offers recipes that are low-cost and nutritious", 
                tag_list: "Recipes", address: "n/a",
                categories: ['Food']},
                
    {name: "Meals on Wheels (Grinnell)", phone_number: "641-236-2612", 
                address: "925 East St. (First Baptist Church), Grinnell", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels",
                categories: ['Food']}, 
                
    {name: "Meals on Wheels (Brooklyn)", phone_number: "641-522-5400", 
                address: "122 Jackson St., Brooklyn 52211", 
                description_of_service: "Meals on Wheels and Congregate (on site) Meals", 
                tag_list: "Meals on Wheels",
                categories: ['Food']},               
                
    {name: "Montezuma Nursing and Rehab", phone_number: "641-623-5497", 
                tag_list: "Meals on Wheels", address: "n/a",
                description_of_service: "Nursing and rehabilitation facility.",
                categories: ['Food']},
                
    {name: "Mid-Iowa Community Action (MICA)", phone_number: "641-236-3923", 
                address: "611 4th Ave, Grinnell", 
                description_of_service: "Operates an emergency food pantry for those in need; distributes vouchers for milk and bread provided by local churches; distributes fresh produce from local farmers. Mon – Fri, 8:30 am – 4:30 pm", 
                tag_list: "Food Pantry",
                categories: ['Food']},
    # HOUSING
    {name: "Grinnell Housing Authority", phone_number: "641-236-2611",
                address: "927 4th Avenue, Grinnell, IA 50112",
                contact_email: "rentassist@iowatelecom.net",
                description_of_service: "Rent assistance for income-eligible elderly, disabled, and families, funded by HUD. Eligible families select their own rental units anywhere in Poweshiek County. Applications are accepted continuously.",
                categories: ['Housing']},
    
    {name: "Fair Housing", phone_number: "800-669-3247", address: "n/a",
                description_of_service: "Deals with issues of discrimination and with landlord-tenant issues.",
                categories: ['Housing']},
    
    {name: "Arbors Apartments", phone_number: "641-236-9233", 
                description_of_service: "Income-based Housing for Families",
                address: "401 Washington Avenue, 2 & 3 BR, Grinnell, IA 50112",
                tag_list: "Income-Based, Families",
                categories: ['Housing']},
    
    {name: "Center Street Apartments", phone_number: "641-236-6679", 
                description_of_service: "Income-based Housing for Families",
                address: "506 Center Street, 2 BR, Grinnell, IA 50112", 
                tag_list: "Income-Based, Families",
                categories: ['Housing']},
                
    {name: "Grinnell Park Apartments", phone_number: "800-394-1288", 
                description_of_service: "Income-based Housing for Families",
                address: "223 4th Avenue West, 1 & 2 BR, Grinnell, IA 50112",
                tag_list: "Income-Based, Families",
                categories: ['Housing']},
    
    {name: "Spaulding Lofts", phone_number: "515-221-6696", 
                description_of_service: "Income-based Housing for Families or Elderly and Disabled (in Grinnell)",
                address: "827 4th Avenue, 1 & 2 BR, Grinnell, IA 50112", 
                tag_list: "Income-Based, Families, Elderly",
                categories: ['Housing']},
                
    {name: "Westfield Apartments", phone_number: "641-236-8909", 
                address: "308 4th Avenue West, 1 & 2 BR, Grinnell, IA 50112", 
                tag_list: "Income-Based, Families",
                description_of_service: "Apartments",
                categories: ['Housing']},

    {name: "Grinnell Area Housing", phone_number: "641-236-6679",
                description_of_service: "Income-based Housing for Elderly and Disabled (in Grinnell): Brookside East, Brookside West 131 Fourth Avenue West, Brookside South 214 Fourth Avenue West, Monropark Apartments, Pearl Street Apartments 729 Pearl St., Poynter Apartments (for CMI) 412 Third Avenue",
                address: " 214 4th Avenue W., Grinnell, IA 50112",
                tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Grinnell Estates", address: "2020 West St., Grinnell, IA",
                description_of_service: "Income-based Housing for Elderly and Disabled (in Grinnell)",
                phone_number: "641-236-0102", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Barnes City Housing, Financial Service Group, Inc", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Brooklyn Housing, Inc., Karen McNaul", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-623-5026", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Deep River Housing, Financial Service Group, Inc", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Malcom Manor, Karen McNaul", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-623-5026", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Montezuma, Sunny View Square, Grinnell Area Housing", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "641-236-6679", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Searsboro Manor Apartments, Financial Service Group, Inc", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "319-664-3002", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Victor Senior Housing, National Management", address: "n/a",
                description_of_service: "Income-based Housing for Elderly and Disabled (outside Grinnell)",
                phone_number: "515-223-0300", tag_list: "Income-Based, Elderly, Disabled",
                categories: ['Housing']},
    
    {name: "Salvation Army Poweshiek County Service Extension Unit #261",
                phone_number: "641-623-3275", address: "303 E. Washington, Montezuma",
                description_of_service: "Call for information on family service shelter or help with eviction",
                categories: ['Housing']},
                
    {name: "Iowa Finance Authority", phone_number: "515-725-4900", 
                description_of_service: "Services may include down payment assistance for both first-time home buyers and previous homeowners. Military Homeownership Assistance programs. Some grant funds may also be available.",
                website: "www.iowafinanceauthority.gov/Programs/Affordable-Homeownership",
                address: "2015 Grand Ave., Des Moines, Iowa 50312", tag_list: "Home Owners",
                categories: ['Housing']},
    
    {name: "REGION 6 Housing Trust Fund", phone_number: "641-752-0717", address: "n/a",
                description_of_service: "Income-based funding for new home buyers, existing home owners, rental property owners, and other affordable housing projects may qualify.",
                website: "www.region6planning.org/housing_trust_fund", tag_list: "Home Owners",
                categories: ['Housing']},
                
    {name: "Single Family Home Loan Guarantees", phone_number: "515-284-4667", address: "n/a",
                description_of_service: "Program assists approved lenders in providing low- and moderate-income households the opportunity to own a home. Work directly with approved lender.",
                website: "www.rd.usda.gov/programs-services/single-family-housing-guaranteed-loan-program/ia", 
                tag_list: "Home Owners, Families", categories: ['Housing']},
    
    {name: "Single Family Housing Direct Home Loans", phone_number: "641-932-3031", address: "n/a",
                description_of_service: "Program assists low- and very-low-income applicants obtain homeownership. Contact local USDA office – Poweshiek County Area 5. Contact Albia Area Office",
                website: "www.rd.usda.gov/programs-services/single-family-housing-direct-home-loans/ia", 
                tag_list: "Home Owners, Families", categories: ['Housing']},
    
    {name: "Weatherization program", phone_number: "641-236-3923", address: "n/a",
                description_of_service: "To apply for this government-funded program, applicants must first apply for LIHEAP. Even if income is above limit for LIHEAP, you may qualify for weatherization. Funds are both for home owners and for renters. Applications are accepted year-around.", 
                tag_list: "Home Owners", categories: ['Housing']},
    
    {name: "Hometown Energy Fund", phone_number: "866-255-4268)", address: "n/a",
                description_of_service: "This program is for home owners whose income falls within the federal guidelines of 200 – 300% poverty, and who receive both gas and electric from Alliant Energy. Applicants pays 10% of cost of energy savings upgrade and Alliant pays 90%. Applications are accepted when funds are available. Call MICA (641-236-3923) for information and to apply",
                website: "www.AlliantEnergy.com", tag_list: "Home Owners",
                categories: ['Housing']},
                
    {name: "Second Mile", phone_number: "641-236-7892", address: "515 3rd Ave., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used clothing, furniture, and much more. Contact: Deanna Vogt.",
                tag_list: "Furniture, Clothing",
                categories: ['Housing']},
                
    {name: "Goodwill Industries", phone_number: "641-236-7312", address: "230 West St., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used clothing and furniture",
                tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    
    {name: "Anderson's Used Furniture", phone_number: "641-236-3466", address: "1018 Washington Ave., Grinnell, IA 50112", 
                description_of_service: "Inexpensive used furniture. Open Fri. 1 – 6 pm and Sat. 9 am – 5 pm",
                tag_list: "Furniture",
                categories: ['Housing']},
    
    {name: "Phase II Consignment", phone_number: "641-236-8126", address: "912 Main St., Grinnell, IA 50112", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    
    {name: "Montezuma Free Clothes Closet", phone_number: "641-623-3275", address: "411 E Main, Montezuma, IA", 
                description_of_service: "Mon. 10:00 am – 12:30 pm, Wed. 2:00 – 4:30 pm, Thurs. 4:30 – 6:30 pm. Every 3rd Sat., 10:00 am – Noon",
                tag_list: "Clothing",
                categories: ['Housing']},
    
    {name: "Tracy's Treasures", phone_number: "641-990-2944", address: "403 E. Main St., Montezuma, IA", 
                description_of_service: "Mostly clothes, but call to check if she has furniture",
                tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    
    {name: "White's Consignment", phone_number: "641-623-2208", address: "806 S. Front St., Montezuma, IA", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    
    {name: "Once and Again Consignment", phone_number: "641-522-2333", address: "102 N. Orchard St., Brooklyn, IA", 
                description_of_service: "Consignment", tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    
    {name: "Salvation Army Poweshiek County Service Extension #261", phone_number: "641-623-3275", 
                address: "303 E. Washington, Montezuma, IA", 
                description_of_service: "Consignment", website: "www.centralusa.salvationarmy.org",
                tag_list: "Furniture, Clothing",
                categories: ['Housing']},
    {name: "Iowa Workforce Development", phone_number: "800-562-4692", 
				alternative_phone_number: "641-754-1400",
				fax_number: "641-754-1443",
				alternative_address: "1000 East Grand Avenue, Des Moines 50319",
                address: "3405 South Center Street, Marshalltown 50158", 
                description_of_service: "Provides information about job opportunities, training, unemployment benefits, and the labor market.", website: "https://www.iowaworkforcedevelopment.gov/",
                tag_list: "Job",
                categories: ['Employment']},
                
    {name: "Promise Jobs", phone_number: "641-754-1400",
                    address: "3405 South Center Street, Marshalltown 50158", 
                    description_of_service: "Provides work experience opportunities, job skills training, and family development to FIP recipients. To schedule a meeting in Grinnell, call the Marshalltown number listed here", website: "https://www.iowaworkforcedevelopment.gov/promise-jobs",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "Denison Job Corps", phone_number: "712-265-2300",
    				alternative_phone_number: "800-733-JOBS (5627)",
                    address: "10 Opportunity Dr, Denison, IA 51442", 
                    website: "http://denison.jobcorps.gov/",
                    description_of_service: "For young women and men 16-24 years old and solo parent program. Second chance to graduate; vocational training. Must meet educational guidelines.",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "Mid-Iowa Community Action (MICA)", phone_number: "641-236-3923", 
    				alternative_address: "1001 S. 18th Ave, Marshalltown, IA 50158",
                    address: "3405 South Center Street, Marshalltown 50158", 
                    description_of_service: "MICA has information on applying for jobs. Through the Strong Parents Strong Children (SPSC)
    program they offer job coaching", website: "https://www.iowaworkforcedevelopment.gov/",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "Iowa Vocational Rehabilitation Services", phone_number: "641-352-7942", 
                    address: "204 W. State Street, Marshalltown 50158", 
                    description_of_service: "The mission of Iowa Vocational Rehabilitation Services is to work for and with individuals who have disabilities to achieve their employment, independence, and economic goals. IVRS works with sophomores in high school through adults. Services offered include: college funding, job training, employment search, assistive technology, medical and psychological assessment, physical/mental restoration services which may include therapy, wheelchairs, hearing aids, etc., job coaching, career guidance and counseling. For more information about the full spectrum of services offered, visit the website.", website: "https://www.ivrs.iowa.gov",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "Aventure", phone_number: "641-236-7470", 
                    address: "820 4th Avenue, Grinnell, Iowa, 50112", 
                    description_of_service: "Whether you want to find a job that fits your lifestyle or find like-minded employees for your business, Aventure is tapped into both the talent and the jobs in local healthcare, clerical, and manufacturing industries. We provide IT, human resources, and marketing solutions while conducting executive placement, recruitment, and hiring. Our mission is to find “the one” for our clients, be it a job they love or an employee that takes the team to the next level. We have locations in Sioux City, Grinnell, Humboldt, Sheldon, Spencer, IA; Norfolk, Wayne, NE; Fairmont, MN. Our solutions. Your success.", website: "https://www.aventure.com",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "First Class Staffing", phone_number: "641-236-6808", 
                    address: "929 Broad Street, Grinnell, Iowa, 50112", 
                    description_of_service: "Staffing, Direct Placement, Safety Consulting, Employee Benefit Programs, Workers’ Compensation Services, Payroll Administration, Personal Human Resources", website: "http://www.1stclassstaffing.com",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "QPS Employment Group, Inc.", phone_number: "641-236-9722", 
                    address: "1108 West St, Grinnell, Iowa, 50112", 
                    description_of_service: "Provides information about job opportunities, training, unemployment benefits, and the labor market.", website: "https://www.qpsemployment.com",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "TEMP Associates", phone_number: "641-236-9220", 
                    address: "1029 Broad Street, Grinnell, Iowa, 50112", 
                    description_of_service: "Welcome to TEMP Associates! Home of TEMP: The Employee Market Place. The employee market place is the source for more than just employment opportunities. We are the first and only company to employ the power of E3. For each new hire placed on a job assignment they must first meet the E3 requirements. *** Evaluation, Education, Employment.", website: "https://www.qpsemployment.com",
                    tag_list: "Job",
                    categories: ['Employment']},
    {name: "Iowa Legal Aid", alternative_phone_number: "800-532-1275",
    				phone_number: "800-992-8161", 
                    address: "1111 9th Street, Suite 230 Des Moines, IA 50314", 
                    description_of_service: "Legal hotline for older Iowans (M – F, 9 am – 4:30 pm) 800-992-8161. Free legal counseling for elderly and income-eligible individuals and families. Mon – Fri, 9:00 – 11:00 and 1:30 – 3:30 (except Thurs. afternoons). Appts available on the 3rd Thurs., 9:30 am – noon, at the Grinnell MICA office.", website: "https://www.iowalegalaid.org",
                    tag_list: "Hotline",
                    categories: ['Legal']},
    {name: "Iowa Concern",
    				phone_number: "800-447-1985", 
    				agency_email: "legalexpert@iastate.edu",
                    address: "2150 Beardshear Hall, Ames, IA 50011-2031", 
                    description_of_service: "Iowa Concern has frequently asked questions available as well as stress counselors available by phone at 1-800-447-1985 or one-on-one live chat. An attorney is available for legal questions by phone or email.", website: "http://www.extension.iastate.edu/iowaconcern/legal.html",
                    tag_list: "Hotline",
                    categories: ['Legal']},
    {name: "Iowa Workman’s Compensation",
    				phone_number: "515-281-5387", 
    				alternative_phone_number: "800-562-4692",
                    address: "1000 East Grand Ave., Des Moines 50319", 
                    description_of_service: "Legal advice for obtaining wage compensation", 
                    categories: ['Legal']},
    {name: "Find-A-Lawyer – Attorney Referral Service",
    				phone_number: "800-532-1108", 
                    address: "2150 Beardshear Hall, Ames, IA 50011-2031", 
                    description_of_service: "Service of the Iowa State Bar Association. Lawyers found through this service charge $25 for the first 30 minute consultation.", website: "http://www.iowafindalawyer.com",
                    tag_list: "Referral",
                    categories: ['Legal']},
    {name: "Disability Rights IOWA",
    				phone_number: "800-779-2502", 
                    address: "2400 East Court Ave., Suite 300, Des Moines 50309", 
                    description_of_service: "Law Center to promote and defend human and legal rights of disabled and mentally ill.", website: "http://www.disabilityrightsiowa.com",
                    tag_list: "Disability",
                    categories: ['Legal', 'Disability']},
    {name: "Grinnell Police Department",
    				phone_number: "(non-emergency) 641-236-2670 ", 
                    address: "1020 Spring St, Grinnell, Iowa, 50112", 
                    description_of_service: "Occasionally gives rides to homeless individuals.", website: "http://www.grinnelliowa.gov/169/Police",
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Poweshiek County Sheriff Office",
    				phone_number: "641-623-5679", 
                    address: "4802 Barnes City Rd., PO Box 297, Montezuma 50171", 
                    description_of_service: "County Sheriff", website: "http://www.poweshiekcosheriff.com/",
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Poweshiek County Attorney",
    				phone_number: "641-623-5134", 
    				fax_number: "641-623-2820",
    				website: "http://poweshiekcounty.org/attorney/",
                    address: "4802 Barnes City Rd., PO Box 297, Montezuma 50171", 
                    description_of_service: "Rebecca Petig", 
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Poweshiek County Clerk of Court",
    				phone_number: "641-623-5644", 
                    address: "County Courthouse 302 East Main, Montezuma, IA  50171", 
                    description_of_service: "Court", website: "http://www.poweshiekcounty.org/Poweshiek-clerk-of-courts/",
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Magistrate Court (Wednesdays)",
    				phone_number: "641-236-2625", 
    				website: "http://poweshiekcounty.org/attorney/",
                    address: "County Courthouse 302 East Main, Montezuma, IA  50171", 
                    description_of_service: "Court", 
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Poweshiek County Probation/Parole Office",
    				phone_number: "641-673-7038", 
    				website: "http://poweshiekcounty.org/attorney/",
                    address: "County Courthouse 302 East Main, Montezuma, IA  50171", 
                    description_of_service: "Parole Office",
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Iowa Attorney General",
    				phone_number: "515-281-5164", 
    				fax_number: "515-281-4209",
                    address: "Office of the Attorney General of Iowa Hoover State Office Building 1305 E. Walnut Street, Des Moines IA 50319", 
                    description_of_service: "Attorney General", website: "https://www.iowaattorneygeneral.gov/contact-us",
                    tag_list: "Law",
                    categories: ['Legal']},
    {name: "Office of Ombudsman",
    				phone_number: "515-281-3592", 
    				website: "https://www.legis.iowa.gov/Ombudsman/",
                    address: "Ola Babcock Miller Building, 1112 East Grand, Des Moines 50319", 
                    description_of_service: "Investigates grievances about state and local governments.",
                    tag_list: "Law",
                    categories: ['Legal']},
    # EDUCATION
    {name: "Head Start", 
    			description_of_service: "Head Start is a federally-funded preschool program for children ages three through five, providing children the social, educational, health and nutritional services they need to grow up healthy, happy, and confident. Contact the Head Start Specialist at MICA.", 
    			address: "611 4th Ave., Grinnell, IA 50112", phone_number: "641-236-3923", 
    			tag_list: "Preschool", categories: ['Education']},
    
    {name: "Grinnell Community Daycare and Preschool",
    			description_of_service: "(private)", 
    			phone_number: "641-236-7214", address: "1436 Penrose, Grinnell, IA 50112", contact_email: "grinnelldaycare@iowatelecom.net", categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Grinnell Newburg Preschool", 
    			description_of_service: "(public) at Fairview School", 
    			phone_number: "641-236-2780", address: "1310 Hobart St., Grinnell, IA 50112", categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Community Preschool",
    			description_of_service: "(private)",
    			phone_number: "641-236-3111", address: "UCC Congressional Church, 902 Broad Street, Grinnell, IA 50112", 
    			categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Grinnell College Preschool", description_of_service: "(private)",
    			phone_number: "641-236-3320", address: "1207 Park Street, Grinnell, IA 50112", categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Brooklyn Preschool", address: "1090 Jackson Street, Brooklyn, IA 52211",
    			description_of_service: "(public)", phone_number: "641-522-7058",
    			categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Montezuma Preschool", description_of_service: "(public)",
    			phone_number: "641-623-5129", address: "504 N. 4th Street, Montezuma, IA 50171", categories: ['Education'], tag_list: "Preschool"},
    
    {name: "Fairview Elementary School", 
    			description_of_service: "Grinnell – Newburg Community School District, grades preschool-2. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2780", address: "1310 Hobart St.",
    			alternative_address: "1333 Sunset, Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education'], tag_list: "Preschool, Elementary School"},
    
    {name: "Bailey Park Elementary School", 
    			description_of_service: "Grinnell – Newburg Community School District, grades K-2. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2770", address: "210 Eighth Ave",
    			alternative_address: "1333 Sunset, Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education'], tag_list: "Preschool, Elementary School"},
    
    {name: "Davis Elementary School", 
    			description_of_service: "Grinnell – Newburg Community School District, grades 3-4. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2790", address: "818 Hamilton Ave",
    			alternative_address: "1333 Sunset, Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education'], tag_list: "Elementary School"},
    
    {name: "Grinnell Middle School", 
    			description_of_service: "Grinnell – Newburg Community School District, grades 5-8. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2750", address: "132 East Street South",
    			alternative_address: "1333 Sunset, Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education'], tag_list: "Middle School"},
    
    {name: "Grinnell High School", 
    			description_of_service: "Grinnell – Newburg Community School District, grades 9–12. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2720", address: "1333 Sunset Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education'], tag_list: "High School"},
    
    {name: "Independent Learning Center", 
    			description_of_service: "Formerly New Horizons Alternative H.S. and School-Within-A-School. Grinnell – Newburg Community School District. Alternative address is the administrative office for the school district, and alternative phone number is that of the admin office.", 
    			phone_number: "641-236-2720", address: "1333 Sunset Grinnell, IA 50112",
    			website: "www.grinnell-k12.org", alternative_phone_number: "641-236-2700",
    			categories: ['Education']},
    
    {name: "Central Iowa Christian School",
    			description_of_service: "Grades K-8, private",
    			phone_number: "641-236-3000", address: "201 380th Avenue, Grinnell, IA 50112", website: "www.centraliowachristian.org",
    			categories: ['Education'], tag_list: "Elementary School, Middle School, High School"},
    
    {name: "Iowa Valley Community College District (IVCCD)", 
    			description_of_service: "Call or see website for programs including High School Equivalency Diploma (HSED, formerly GED), ESL tutoring, continuing ed. classes.",
    			phone_number: "641-236-0513", address: "123 6th Avenue West, Grinnell",
    			website: "www.iavalley.edu", categories: ['Education']},
    
    {name: "Brooklyn – Guernsey – Malcom Community School District",
    			description_of_service: "School District",
    			phone_number: "641-522-7058", address: "1090 Jackson Street, Brooklyn, IA 52211",
    			website: "www.brooklyn.k12.ia.us", categories: ['Education'],
    			tag_list: "Elementary School, Middle School, High School, School District"},
    
    {name: "Lynnville – Sully Community School District",
    			description_of_service: "School District",
    			phone_number: "641-594-4445", address: "12476 Hwy F62 E., Sully, IA 50251",
    			website: "www.lshawks.org", categories: ['Education'],
    			tag_list: "School District"},
    
    {name: "Montezuma Community School District",
    			description_of_service: "School District",
    			phone_number: "641-623-5129", address: "504 N. 4th Street, Montezuma, IA 50171",
    			website: "www.montezuma-schools.org", categories: ['Education'],
    			tag_list: "School District"},
    
    {name: "Area Education Agency (AEA 267)", phone_number: "888-735-1539",
    			description_of_service: "(The Grinnell office closed June 30, 2016.)Early Childhood services, services for children with disabilities; work experience. ",
    			address: "909 South 12th Street, Marshalltown, IA 50158",
    			website: "www.aea267.k12.ia.us", categories: ['Education'], 
    			tag_list: "Education Agencies"},
    
    {name: "English as a Second Language (ESL) – Kids", phone_number: "641-236-6324",
    			description_of_service: "ESL - Kids",
    			address: "n/a",
    			contact_email: "trosenow@grinnell.k12.ia.us", categories: ['Education'], 
    			tag_list: "Education Agencies"},
    
    {name: "Network of Iowa Christian Home Educators (NICHE)", 
    			phone_number: "515-830-1614", alternative_phone_number: "800-723-0438",
    			description_of_service: "NICHE",
    			address: "PO Box 158, Dexter 50070",
    			contact_email: "info@the-niche.org", website: "www.the-NICHE.org",
    			categories: ['Education'], tag_list: "Education Agencies"},
    # Health and Medical
	{name: "Grinnell Regional Medical Center", description_of_service: "GRMC",
				phone_number: "641-236-7511", alternative_phone_number: "E.R. 641-236-2380",
				website: "grmc.us", address: "210 4th Ave, Grinnell, IA 50112",
				categories: ['Health and Medical'], tag_list: "Hospitals and Health Centers"},

	{name: "Light Center for Community Health - GRMC Public Health",
				desciption_of_service: "Immunization clinics, communicable disease control, community care clinic, lead tests.",
				phone_number: "641-236-2385", address: "306 4th Avenue, Grinnell, IA 50112",
				website: "www.grmc.us/services/public-health",
				categories: ['Health and Medical'], tag_list: "Hospitals and Health Centers"},

	{name: "Postels Community Health Park",
				description_of_service: "Massage and relaxation therapies, physical therapy, reflexology, etc.",
				phone_number: "641-236-2953", address: "807 Broad St., Grinnell, IA 50112",
				website: "www.grmc.us/services/integrated-medicine",
				categories: ['Health and Medical'], tag_list: "Hospitals and Health Centers"},

	{name: "Paul W. Ahrens Fitness Center",
				description_of_service: "Exercise classes with on-site childcare. Immediate family members of inpatients may use the PWA Fitness Center at no cost. Located at Postels Community Health Park",
				phone_number: "641-236-2999", website: "www.grmc.us/services/wellness-services",
				address: "824 Commercial St., Grinnell, IA 50112",
				categories: ['Health and Medical'], tag_list: "Hospitals and Health Centers"},

	{name: "Manatt Family Urgent Care Clinic",
				description_of_service: "Check in on first floor of the Ahrens Medical Arts Building, 210 4th Ave. Mon—Fri, 7 am – 7 pm., Sat, 9 am – noon.",
				phone_number: "641-236-2378", address: "210 4th Ave, Grinnell, IA 50112",
				categories: ['Health and Medical'], tag_list: "GRMC Programs"},

	{name: "Grinnell Regional Community Care Clinic (Free Clinic)",
				description_of_service: "Light Center. 2nd and 4th Thurs., 2 – 4 pm. Call for an appointment. Free medical services for uninsured, low-income residents of Poweshiek County.",
				phone_number: "641-236-2385",
				address: "n/a",
				categories: ['Health and Medical'], tag_list: "GRMC Programs"},

	{name: "Blood Pressure Clinic",
				description_of_service: "Light Center. Thurs. 1 – 2 pm.",
				phone_number: "641-236-2385", address: "n/a",
				categories: ['Health and Medical'], tag_list: "GRMC Programs"},

	{name: "Grinnell Regional Home Care", address: "n/a",
				description_of_service: "Light Center. A home health agency.",
				phone_number: "641-236-2542",
				categories: ['Health and Medical'], tag_list: "GRMC Programs",
				website: "http://www.grmc.us/services/home-care"},

	{name: "Adult Foot Care Clinic", description_of_service: "Light Center. 2nd, 3rd, and 4th Wed., 9:00 – noon. Call Grinnell Regional Home Care for an appointment.",
				phone_number: "641-236-2385", address: "n/a",
				categories: ['Health and Medical'], tag_list: "GRMC Programs"},

	{name: "Grinnell Regional Women’s Health Clinic", phone_number: "641-236-2905",
				categories: ['Health and Medical'], tag_list: "GRMC Programs",
				description_of_service: "Ahrens Medical Arts Building, 2nd floor.",
				address: "n/a"},

	{name: "Grinnell Regional Hospice", description_of_service: "Support with end-of-life care, both in-home and in the hospital (GRMC).",
				phone_number: "641-236-2418", address: "n/a",
				categories: ['Health and Medical'], tag_list: "GRMC Programs"},

	{name: "Midwest Ambulance Service of Iowa", phone_number: "641-236-4080",
				description_of_service: "In an emergency, call 911.",
				address: "n/a", categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Iowa Department of Public Health", phone_number: "515-281-7689",
				alternative_phone_number: "866-227-9878", address: "321 E. 12th Street, Des Moines 50319-0075",
				website: "http://www.idph.iowa.gov/", description_of_service: "Public Health",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Central Iowa Family Planning", address: "717 5th Ave. Suite 4, Grinnell",
				phone_number: "641-236-7787", website: "http://www.cifp.org/",
				description_of_service: "Confidential and affordable reproductive health care services for men and women, including yearly exams, testing and treatment of sexually transmitted infections, birth control method options counseling, emergency contraception, pregnancy testing and counseling. All clients are accepted regardless of their income/insurance status. See website for hours.",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Referral Source", address: "n/a", website: "www.211.org", phone_number: "211",
				description_of_service: "Through United Way. They offer free and confidential information for help with food, housing, employment, health care, counseling, and more.",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Partnership for Prescription Assistance", description_of_service: "Single-source prescription assistance",
				phone_number: "888-477-2669", website: "www.pparx.org", address: "n/a",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "SafeNet Rx", description_of_service: "(Formerly Iowa Prescription Drug Corp.) $3 Medication Voucher Program",
				phone_number: "866-282-5817", address: "n/a", website: "www.safenetrx.org",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "NeedyMeds", description_of_service: "Prescription drug card offers discounts at certain pharmacies.",
				phone_number: "800-503-6897", address: "n/a", website: "www.needymeds.org",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Home Health Agencies", phone_number: "641-236-7717",
				address: "2021 4th Ave., Grinnell", description_of_service: "Community Services of St. Francis",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Iowa Department of Human Services (DHS)", phone_number: "800-342-0829",
				description_of_service: "Financial services include SNAP (food stamps) and medical assistance, and services for children and families. Local Child/Adult Abuse Hotline - 641-792-1955. State-wide child/dependent adult Abuse Hotline: 800-362-2178",
				contact_email: "CJaspe01@dhs.state.ia.us", address: "717 5th Ave., Suite 6",
				website: "www.dhs.iowa.gov",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Iowa Brain Injury Information Center", description_of_service: "Brain Injury Association of Iowa",
				phone_number: "800-444-6443", address: "317 East 6th Street, Des Moines 50309",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Iowa Poison Control Center", description_of_service: "Main phone number is for EMERGENCIES.",
				phone_number: "712-279-3710", address: "401 Douglas Street., Ste. 501, Sioux City 51101", website: "www.iowapoison.org",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Total Rehab", address: "234 West St, Grinnell", phone_number: "641-236-4506",
				description_of_service: "Orthopedic & sports specialists, physical therapy, strength & conditioning, work posture education.",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "Visiting Nurse Services (VNS) of Iowa", description_of_service: "VNS",
				phone_number: "515-288-1516", website: "www.vnsia.org",
				address: "1111 9th St. Ste. 320, Des Moines 50314",
				categories: ['Health and Medical'], tag_list: "Non-GRMC Services"},

	{name: "I-Smile", website: "http://www.ismiledentalhome.iowa.gov/", 
				phone_number: "515-557-9023", address: "n/a", 
				description_of_service: "Child dental screenings at the Light Center the 3rd and 4th Tuesdays of the month.",
				categories: ['Health and Medical'], tag_list: "Dental"},

	{name: "Mother-Child Wellness Program", phone_number: "641-236-2006",
				address: "n/a", description_of_service: "Serves families in Mahaska, Poweshiek, and Jasper Counties who have household income of 200 percent of poverty level or under. They can assist in finding dental care and screenings.",
				categories: ['Health and Medical'], tag_list: "Dental"},

	{name: "Poweshiek County Dental Coalition", contact_email: "PoweshiekDentalCoilition@gmail.com",
				phone_number: "515-650-1877", address: "n/a",
				description_of_service: "Promotes screening and dental clinics for children 0 – 18. Voucher funds are available for dental care for children who are underserved.",
				categories: ['Health and Medical'], tag_list: "Dental"},

	{name: "Broadlawns Medical Center—Dental Clinic", phone_number: "515-282-2421",
				description_of_service: "Dental services primarily for aged, unemployed or low-income adults",
				website: "http://www.broadlawns.org/dental-clinic.cfm", address: "n/a",
				categories: ['Health and Medical'], tag_list: "Dental, Hospitals and Health Centers"},

	{name: "Center for Disabilities & Development (U of IA Children’s Hospital)", 
				phone_number: "319-356-1613", website: "http://www.uichildrens.org/dentistry#MarketingContent",
				alternative_phone_number: "319-353-6711", address: "100 Hawkins Dr, Iowa City, IA 52242",
				description_of_service: "Dental services for infants, children, and young adults (under age 21), including patients with special health needs. Call for an appointment. Other phone number: 877-686-0031",
				categories: ['Health and Medical'], tag_list: "Dental, Hospitals and Health Centers"},

	{name: "Dental Lifeline Network Iowa", phone_number: "515-251-8000",
				description_of_service: "Donated dental services. Applicants must lack adequate income, have a permanent disability or are elderly (age 65 or older) or qualify as medically fragile. Contact Diane Wells, coordinator.",
				website: "http://www.dentallifeline.org/iowa/", address: "9000 Northpark Drive, Johnston, IA 50131", contact_email: "dwells@DentalLifeline.org",
				categories: ['Health and Medical'], tag_list: "Dental"},

	{name: "Lion’s Club", address: "n/a",
				description_of_service: "Referrals are through school nurses and support staff. They do screenings in Head Start and other preschool classrooms and help provide glasses to children from low-income families.",
				categories: ['Health and Medical'], tag_list: "Vision"},

	{name: "Prevent Blindness Iowa", phone_number: "515-244-4341",
				address: "1111 9th St. #250, Des Moines 50314", website: "http://iowa.preventblindness.org/",
				description_of_service: "Sight for Students program. Referrals and applications are available through school nurses and support staff.",
				categories: ['Health and Medical'], tag_list: "Vision"},

	{name: "Iowa KidSight", phone_number: "319-353-7616",
				website: "www.IowaKidSight.org", address: "2431 Coral Court #5, Coralville, IA 52241",
				description_of_service: "Targets 6 months of age through kindergarten. (Joint project of Lions Clubs of Iowa and UI Children’s Hospital, Dept. of Opthalmology and Visual Sciences.)",
				categories: ['Health and Medical'], tag_list: "Vision"},

	{name: "Infantsee", website: "www.infantsee.org", address: "n/a",
				description_of_service: "Participating optometrists provide a one-time comprehensive infant eye assessment for children between 6 and 12 months of age, as a no-cost public service. Use the website to locate participating optometrists.",
				categories: ['Health and Medical'], tag_list: "Vision"},

	{name: "Bariatric Surgery Patient Support Group", phone_number: "641-236-2998",
				address: "Tomasek Conference Center, GRMC", description_of_service: "1st Saturday, 9 – 11 am. This group provides education for GRMC patients who have had gastric bypass surgery.",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Breastfeeding Class", description_of_service: "Given once per quarter. Call for information.", 
				address: "n/a", phone_number: "641-236-2324",
				categories: ['Health and Medical'], tag_list: "Support Groups"},

	{name: "Breastfeeding Support Group", description_of_service: "Light Center, First Tues. of each month, 10:30 am.",
				phone_number: "641-236-2385", address: "n/a",
				categories: ['Health and Medical'], tag_list: "Support Groups"},

	{name: "Cancer Support Group", phone_number: "641-236-2568",
				address: "GRMC", contact_email: "LRomero@grmc.us",
				description_of_service: "Every Tuesday, 9:30 – 10:30 am.",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Caregivers Support Group",
				description_of_service: "Fourth Tues. of each month, 10 – 11 am.",
				contact_email: "BGallegos@grmc.us", address: "1025 5th Ave, Grinnell",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Diabetes Living Support Group", phone_number: "641-236-2488",
				description_of_service: "2nd Monday of odd months, 7 – 8 pm. This support group meets monthly and is open to all people with diabetes.",
				address: "Tomasek Conference Center, GRMC",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Grief Support Group", contact_email: "bgallegos@grmc.us",
				address: "930 Park St., Grinnell, IA 50112", description_of_service: "2nd Wed. of each month, 10 – 11 a.m",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Meet and Eat Bereavement Support", phone_number: "641-236-2418",
				description_of_service: "This bereavement support group provides social opportunities for widows and widowers. Individuals gather for a meal and social activities. 1st Sunday of the month, 5:30 pm.", 
				address: "Tomasek Conference Center, GRMC", contact_email: "shuls@grmc.us",
				categories: ['Health and Medical'], tag_list: "Support Groups, GRMC Programs"},

	{name: "Lyme Disease Support Group", address: "n/a",
				description_of_service: "Support group for those who suffer from Lyme disease and their family or support persons. The group provides educational speakers, support, and discussion of treatment modalities. Contact: Dale Lamb, Lamb Law Office",
				categories: ['Health and Medical'], tag_list: "Support Groups"},

	{name: "ANAD: Nat’l Assoc. of Anorexia Nervosa and Associated Disorders",
				phone_number: "641-510-1141", address: "410 Washington, Lot 31, Grinnell, IA 50112",
				description_of_service: "Mon. 7:30 – 8:30 pm. Contact: Brooke Burkett. Support group for men and women with bulimia or anorexia",
				categories: ['Health and Medical'], tag_list: "Support Groups"},

	{name: "Grinnell Regional Home Care, Loan Closet", phone_number: "641-236-2385",
				address: "210 4th Avenue, Grinnell, IA 50112", description_of_service: "Medical Equipment Loan Closet",
				categories: ['Health and Medical'], tag_list: "Medical Equipment"},

	{name: "Hammer Medical Supply", phone_number: "641-792-9339", address: "1719 1st Ave. E., Newton",
				description_of_service: "Medical supply",
				categories: ['Health and Medical'], tag_list: "Medical Equipment"},

	{name: "Lincare", phone_number: "515-223-6078", address: "Urbandale, IA",
				description_of_service: "No longer an office in Grinnell",
				categories: ['Health and Medical'], tag_list: "Medical Equipment"},

	{name: "Long Term Medical Supply", phone_number: "641-236-0608",
				address: "929 Broad St., Grinnell, IA 50112", description_of_service: "Medical Supply",
				categories: ['Health and Medical'], tag_list: "Medical Equipment"},

	{name: "Hawk-I", phone_number: "800-257-8563", website: "www.hawk-i.org",
				description_of_service: "No- or low-cost health care coverage to children in working, income-eligible families.",
				address: "n/a",
				categories: ['Health and Medical'], tag_list: "Medical Insurance"},

	{name: "Medicaid (also called Title 19)", phone_number: "800-338-8366", website: "www.dhs.iowa.gov",
				description_of_service: "(Health care options are listed under the tab “Can we help?”) Apply on line through the Iowa Department of Human Services website. MICA can also help you apply for various Iowa DHS services. For immediate coverage, see Outreach entry below.",
				address: "n/a",
				categories: ['Health and Medical'], tag_list: "Medical Insurance"},

	{name: "Iowa Health and Wellness Plan", phone_number: "800-338-8366", website: "www.dhs.iowa.gov",
				description_of_service: "This is an Iowa Medicaid program, new in 2014, that covers adults ages 19 to 64. Eligible member income is at or below 100 percent of the Federal Poverty Level. ",
				address: "n/a",
				categories: ['Health and Medical'], tag_list: "Medical Insurance"},

	{name: "Outreach", phone_number: "641-236-2385",
				description_of_service: "This program helps families who think they may qualify for Medicaid or Hawk-I. It allows eligibility on same day notice and covers the same benefits as Medicaid. For information, please call the Light Center, or contact VNS of Iowa at 515-558-6240",
				address: "n/a",
				categories: ['Health and Medical'], tag_list: "Medical Insurance"},

	{name: "Suicide Prevention Lifeline", address: "n/a",
				description_of_service: "Suicide Prevention",
				phone_number: "800-273-8255", website: "http://suicidepreventionlifeline.org/",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Grinnell Regional Mental Health Clinic", phone_number: "641-236-2347",
				website: "http://www.grmc.us/services/mental-health", address: "210 4th Ave, Grinnell",
				description_of_service: "Ahrens Medical Arts Building, third floor; M – F, 8:00 am – 4:30 pm. Note: This clinic is not taking new patients, and will discontinue prescribing medications in Aug. 2016",
				categories: ['Health and Medical'], tag_list: "Mental Health, GRMC Programs"},

	{name: "Capstone Behavioral Healthcare", phone_number: "641-792-4012", 
				website: "www.capstonebh.com", address: "306 N. 3rd Avenue E., Newton, IA 50208",
				description_of_service: "Note: Grinnell location opening in Fall 2016. Contact Newton office until then. Psychiatric therapy for mentally ill; help with substance abuse.",
				categories: ['Health and Medical'], tag_list: "Mental Health, Substance Abuse"},

	{name: "The Station Clubhouse", phone_number: "641-236-5325",
				address: "729 Pearl Street, Grinnell", contact_email: "station@pcpartner.net",
				description_of_service: "The Station Clubhouse is a psychosocial rehabilitation program for adults with a mental illness. It includes work-oriented living skills, and socialization activities in a safe and supportive environment, as well as in-home community support services.",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Jeff Wells, LMFT, CADC", phone_number: "641-236-4680",
				address: "815 1/2 5th Ave., Grinnell, IA 50112", website: "http://www.goodtherapy.org/therapists/profile/jeff-wells-20080211",
				description_of_service: "Individual therapy for adults and older adolescents; substance abuse evaluation and counseling",
				categories: ['Health and Medical'], tag_list: "Mental Health, Substance Abuse"},

	{name: "Collaborative & Strength-Based Counseling", phone_number: "641-236-8811",
				website: "www.grinnellcounseling.com", description_of_service: "Kun-Hong Lu, LISW",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Linda Knierim, LISW", address: "715 5th Avenue, Grinnell, IA 50112", phone_number: "641-236-3090",
				description_of_service: "LISW",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Davis Psychological Services, PC", website: "www.davispsychservices.org",
				phone_number: "641-236-0632", address: "821 5th Avenue, Suite 201, Grinnell, IA 50112", description_of_service: "Dr. Brandon Davis",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Creative Hope Counseling", phone_number: "641-226-2665", 
				website: "www.creative-hope.com", description_of_service: "Sara Erselius, LISW, RPT. Offers play therapy. Provides individual and group therapy for children & adolescents.",
				address: "Montezuma, IA",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Prelude Behavioral Services (formerly MECCA)", phone_number: "515-262-0349",
				website: "www.PreludeIowa.org", address: "3451 Easton Blvd, Des Moines 50317",
				alternative_phone_number: "319-351-4357", alternative_address: "430 Southgate Ave, Iowa City 52240",
				description_of_service: "Prelude provides an array of services including substance abuse and problem gambling treatment, outpatient and residential treatment, halfway and transitional housing, and case management.",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Healthy Homes Family Services", phone_number: "712-307-6014",
				alternative_phone_number: "641-236-0273", website: "www.healthyhomesfs.com",
				description_of_service: "In-home skill building working with children age 3 to 17 years as well as their families struggling with a child’s behaviors in the home or school setting. Families must have Medicaid health insurance to qualify. All major insurances accepted for outpatient therapy. They also offer support groups.",
				address: "806 5th Ave, Suite #1, Grinnell, IA 50112",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Midwest Counseling, LLC", phone_number: "319-668-1217",
				website: "www.midwestcounselingllc.com", address: "523 ½ Court St., PO Box 313, Williamsburg, IA 52361", alternative_address: "821 So. 5th St. Suite 208, Grinnell, IA 50112",
				description_of_service: "Jessica McNaul, LMHC, NCC, offers counseling in Grinnell. Dr. Robert Detlefsen, DNP, sees all ages and offers psych med management. All major insurance accepted; sliding scale available.",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "NAMI (National Alliance for the Mentally Ill)", phone_number: "641-792-2441",
				website: "www.namiiowa.com", address: "308 E. 2nd St. North, Newton, IA",
				description_of_service: "NAMI Jasper County support group: 4th Monday each month at 6:30 pm",
				categories: ['Health and Medical'], tag_list: "Mental Health"},

	{name: "Support Numbers", address: "n/a",
				description_of_service: "Substance Abuse Helpline 800-662-4357, Methamphetamine Hotline 888-664-4673, Iowa Drug and Alcohol Helpline 800-242-4111, Al-Anon 800-344-2666, AA Hotline 800-207-2172",
				categories: ['Health and Medical'], tag_list: "Support Groups, Substance Abuse"},

	{name: "24 Hour Answering Service", address: "n/a",
				description_of_service: "Des Moines 515-282-8550, Cedar Falls 319-232-4117, Cedar Rapids 319-365-5955",
				categories: ['Health and Medical'], tag_list: "Support Groups"},

	{name: "Substance Abuse Treatment Unit of Central Iowa (SATUCI)",
				phone_number: "641-236-8662", website: "www.satuci.com",
				address: "927 4th Avenue, Grinnell, IA 50112",
				description_of_service: "Community Center, second floor. Mon. and Wed., 8 am – Noon, 1 – 5 pm. Evaluations, outpatient treatment, prevention and education",
				categories: ['Health and Medical'], tag_list: "Substance Abuse"},

	{name: "Alcoholics Anonymous (AA) Meetings", phone_number: "641-236-0270",
				website: "www.ia.al-anon.alateen.org", alternative_phone_number: "888-4AL-ANON",
				address: "902 Broad St, Grinnell, IA 50112", alternative_address: "6th and State, Grinnell",
				description_of_service: "United Church of Christ (Broad St.) - Mon & Thurs at noon. St. Paul's Episcopal Church (6th and State) - Tues, Thurs, Sat, Sun at 7:30pm. Meeting for women: first Sat of the month at 9am. Third location: Grinnell College campus, 1233 Park St. (“CRSSJ Prayer Garage”) Mon. at 7:00 pm (Enter from side door facing 8th Ave.)",
				categories: ['Health and Medical'], tag_list: "Substance Abuse, Support Groups"},

	{name: "Narcotics Anonymous", address: "Station Club House, 729 Pearl St., Grinnell",
				phone_number: "641-236-0270", alternative_phone_number: "641-821-9565",
				description_of_service: "Fri. at 7:30 pm",
				categories: ['Health and Medical'], tag_list: "Substance Abuse, Support Groups"},

	{name: "Moms off Meth", phone_number: "641-673-0336", address: "n/a",
				description_of_service: "Contact Jackie Allen Black, Crisis Intervention Services", contact_email: "jackie@cismc.org",
				categories: ['Health and Medical'], tag_list: "Substance Abuse, Support Groups"}

]

# Populate database with categories
categories.each do |category|
     Category.create! (category)
end

# Populate database with resources
resources.each do |resource|
    # Get category name from resource to be created
    cat_name = resource[:categories]
    # Create empty list to hold categories
    category_id = []
    # For the category name, find the category
    c_id = Category.find_by(name: cat_name)
    category_id.push(c_id)
    # Replace list of category names with categories
    resource[:categories] = category_id
    # Create resource
    Resource.create! (resource)
end

Resource.all.each do |resource|
    resource.status = "Approved"
    resource.save
end