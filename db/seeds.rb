# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Seed items: 
Item.create(author: "Francis Su", title: "Mathematics for Human Flourishing", description: "Su describes his relationship with an inmate, and the inamate's discovery of mathematics while in prison.")
Item.create(author: "Eric Anthony Grollman", title: "Invisible Labor", description: "Explotation of Faculty of Color in Service Duties")
Item.create(author: "Riegle-Crumb, King, & Irizarry", title: "Does STEM Stand Out? Examining Racial/Ethnic Gaps in Persistence Across Postsecondary Fields", description: "None")
Item.create(author: "Louise Archer Jennifier Dewitt Jonathan Osborne", title: "Is Science for Us? Black Students’ and Parents’ Views of Science and Science Careers", description: "None")
Item.create(author: "None", title: "Science, Feminism, and Black Liberation: An Interview with Sam Anderson", description: "The role of science in the struggle for Black liberation, and why it's critical for Black voices to shape fields that have excluded them.")

# Seed an admin:
##### email: admin@grinnell.edu
##### username: admin
##### password: password
User.create(email: "admin@grinnell.edu", username: "admin", password: "password", admin:true)

