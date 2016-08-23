# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
5.times do
  company = Company.create(name: FFaker::Company.name, country: FFaker::Address.country, city: FFaker::Address.city, description: FFaker::Lorem.paragraph)
  5.times do
    Vacancy.create(name: FFaker::Job.title, description: FFaker::Lorem.paragraph, date: Time.zone.now + 20.days, state: "active", company_id: company.id)
  end
end
