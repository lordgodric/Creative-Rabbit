# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Designer.create(email: 'designer@email.com', name: 'Designer Seed', password: '12345678', password_confirmation: '12345678')
Customer.create(email: 'customer@email.com', name: 'Customer Seed', password: '12345678', password_confirmation: '12345678')
