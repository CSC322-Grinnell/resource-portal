# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# http://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf

categories = [
    {name: "Housing", tag_list: "Furniture, Clothing, Home Owners, Income-Based, Families, Elderly, Disabled"},
    {name: "Families", tag_list: "Expectant Mothers, New Parents, Children/Youth, After School Programs, Youth Activities"},
    {name: "Elderly", tag_list: "Housing, Services, Activites, Meals on Wheels, Income-Based"},
    {name: "Education", tag_list: "Preschool, Elementary School, Middle School, High School, Education Agencies, Food in Schools, School District"}, 
    {name: "Health and Medical", tag_list: "Hospitals, Health Centers, GRMC Programs, Non-GRMC Services, Dental, Vision, Support Groups, Medical Equipment, Medical Insurance, Mental Health, Substance Abuse"}, #ME
    {name: "Employment", tag_list: "Job, Hotline"},
    {name: "Legal", tag_list: "Law,Referral"},
    {name: "Transportation"}, #ME
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
                description_of_service: "Provides work experience opportunities, job skills training, and family development to FIP
recipients. To schedule a meeting in Grinnell, call the Marshalltown number listed here", website: "https://www.iowaworkforcedevelopment.gov/promise-jobs",
                tag_list: "Job",
                categories: ['Employment']},
{name: "Denison Job Corps", phone_number: "712-265-2300",
				alternative_phone_number: "800-733-JOBS (5627)",
                address: "10 Opportunity Dr, Denison, IA 51442", 
                website: "http://denison.jobcorps.gov/",
                description_of_service: "For young women and men 16-24 years old and solo parent program.
Second chance to graduate; vocational training. Must meet educational guidelines.",
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
                description_of_service: "The mission of Iowa Vocational Rehabilitation Services is to work for and with individuals who
have disabilities to achieve their employment, independence, and economic goals. IVRS works
with sophomores in high school through adults. Services offered include: college funding, job
training, employment search, assistive technology, medical and psychological assessment,
physical/mental restoration services which may include therapy, wheelchairs, hearing aids, etc.,
job coaching, career guidance and counseling. For more information about the full spectrum of
services offered, visit the website.", website: "https://www.ivrs.iowa.gov",
                tag_list: "Job",
                categories: ['Employment']},
{name: "Aventure", phone_number: "641-236-7470", 
                address: "820 4th Avenue, Grinnell, Iowa, 50112", 
                description_of_service: "Whether you want to find a job that fits your lifestyle or find like-minded employees for your business, Aventure is tapped into both the talent and the jobs in local healthcare, clerical, and manufacturing industries. We provide IT, human resources, and marketing solutions while conducting executive placement, recruitment, and hiring. Our mission is to find “the one” for our clients, be it a job they love or an employee that takes the team to the next level. We have locations in Sioux City, Grinnell, Humboldt, Sheldon, Spencer, IA; Norfolk, Wayne, NE; Fairmont, MN. Our solutions. Your success.", website: "https://www.aventure.com",
                tag_list: "Job",
                categories: ['Employment']},
{name: "First Class Staffing", phone_number: "641-236-6808", 
                address: "929 Broad Street, Grinnell, Iowa, 50112", 
                description_of_service: "Staffing
Direct Placement
Safety Consulting
Employee Benefit Programs
Workers’ Compensation Services
Payroll Administration
Personal Human Resources", website: "http://www.1stclassstaffing.com",
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
                description_of_service: "Legal hotline for older Iowans (M – F, 9 am – 4:30 pm) 800-992-8161
Free legal counseling for elderly and income-eligible individuals and families.
Mon – Fri, 9:00 – 11:00 and 1:30 – 3:30 (except Thurs. afternoons).
Appts available on the 3rd Thurs., 9:30 am – noon, at the Grinnell MICA office.", website: "https://www.iowalegalaid.org",
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
                description_of_service: "Service of the Iowa State Bar Association
Lawyers found through this service charge $25 for the first 30 minute consultation.", website: "http://www.iowafindalawyer.com",
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
>>>>>>> eeed1cbaea5b2fd136c892d53b9221698c7a5fbf
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