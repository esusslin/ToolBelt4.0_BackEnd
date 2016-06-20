
User.delete_all
Tool.delete_all


a = User.create(first_name: "Charlie", last_name: "Lee", email:"clcblee@gmail.com", street_address_1: "740 Berkeley Ave", city: "Charlotte", state: "NC", rating:"4")
b = User.create(first_name: "Phil", last_name: "Barnett", email:"p@p.com", street_address_1: "633 Folsom St", city: "San Francisco", state: "CA", rating:"4")
c = User.create(first_name: "Philip", last_name: "B", email:"pp@pp.com", street_address_1: "425 Market St", city: "San Francisco", state: "CA", rating:"4")
d = User.create(first_name: "James", last_name: "Boyd", email:"bb@bb.com", street_address_1: "123 Mission St", city: "San Francisco", state: "CA", rating:"5")
e = User.create(first_name: "Kelson", last_name: "Kelsonic", email:"kk@kk.com", street_address_1: "555 Folsom St", city: "San Francisco", state: "CA", rating:"5")


Tool.create(user: a, title:"drill")
Tool.create(user: a, title:"saw")
Tool.create(user: a, title:"sander")
Tool.create(user: b, title:"drill")
Tool.create(user: b, title:"saw")
Tool.create(user: b, title:"sander")
Tool.create(user: c, title:"drill")
Tool.create(user: c, title:"saw")
Tool.create(user: c, title:"sander")
Tool.create(user: d, title:"drill")
Tool.create(user: d, title:"saw")
Tool.create(user: d, title:"sander")
Tool.create(user: e, title:"drill")
Tool.create(user: e, title:"saw")
Tool.create(user: e, title:"sander")
