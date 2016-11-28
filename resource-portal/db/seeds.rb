# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

f = Category.create(name: "Families")
m = Category.create(name: "Medical")
l = Category.create(name: "Legal")
o = Category.create(name: "Other")

User.create(email: "admin@example.com", password: "12345678", role: "admin")
User.create(email: "user@example.com", password: "12345678", role: "default")

f.tag_list.add("Parents", "School", "New Parents", "Infants", "Daycare")
m.tag_list.add("Medication", "Doctors", "Hospitals")
l.tag_list.add("Divorce", "Family", "Civil")
o.tag_list.add("Meals", "Groceries", "Transportation")

f.save
m.save
l.save
o.save