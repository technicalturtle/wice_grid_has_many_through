# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for i in [ 'Josh','Troy','Nick', 'Dean' ,'Dave' ]
  User.create!(
    name: i
  )
end

User.find(:all).each do |u|
   u.projects << Project.new(name: u.name + "'s project")
   u.projects << Project.new(name: "General project")
   u.projects << Project.new(name: "Priority project")
   u.projects << Project.new(name: "Top secret project")
   u.projects << Project.new(name: "Yet another project")   
end

User.find(:all).each do |u|
   u.tasks << Task.new(name: u.name + "'s tasks")
   u.tasks << Task.new(name: "Kitchen duty")
   u.tasks << Task.new(name: "General tasks")
   u.tasks << Task.new(name: "Maintenance")
   u.tasks << Task.new(name: "Documentation")
end

