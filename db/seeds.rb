# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

15.times do
  City.create!(name: Faker::Address.city)
end

25.times do
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

Specialty.create!(name: "généraliste")
Specialty.create!(name: "boucher")
Specialty.create!(name: "dentiste")
Specialty.create!(name: "chirurgien")
Specialty.create!(name: "Kiné")
Specialty.create!(name: "ORL")

55.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

25.times do
  Appointment.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 5, format: :default), city_id: City.all.sample.id, doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
end

20.times do
  DoctorSpecialty.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end

