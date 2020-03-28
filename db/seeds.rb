# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Clinician.delete_all
CptCode.delete_all
Office.delete_all

clinicians = Clinician.create([
	{
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		middle_name: Faker::Name.middle_name,
		suffix: "Dr. ",
		phone: Faker::PhoneNumber.cell_phone
	},
	{
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		middle_name: Faker::Name.middle_name,
		suffix: "Dr.",
		phone: Faker::PhoneNumber.cell_phone
	},
	{
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		middle_name: Faker::Name.middle_name,
		suffix: "Dr. ",
		phone: Faker::PhoneNumber.cell_phone
	},
])


cpt_codes = CptCode.create([
	{
      description: "Group Therapy",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[0]
	},
	{
      description: "Psychiatric Diagnostic Evaluation",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[0]
	},
	{
      description: "Psychotherapy for Crisis",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[0]
	},
	{
      description: "Developmental Testing, Extended",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[0]
	},
	{
      description: "Sports medicine therapy",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[1]
	},
	{
      description: "Physical therapy",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[1]
	},
	{
      description: "Behavioral health",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[1]
	},
	{
      description: "Mental health",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[1]
	},
	{
      description: "Free nutrition consultation",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[2]
	},
	{
      description: "Nutrition counseling",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[2]
	},
	{
      description: "Nutrition assessments",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[2]
	},
	{
      description: "Nutrition resources",
      duration: 50,
      rate: 300,
      call_to_book: false,
      clinician: clinicians[2]
	}
])

4.times do |index| 
	Office.create({
      city: Faker::Address.city,
      name: "Main Office",
      state: Faker::Address.state,
      street: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      zip: Faker::Address.zip_code,
      cpt_code: cpt_codes[index],
      clinician: clinicians[0]
    })
end
4.times do |index| 
	Office.create({
      city: Faker::Address.city,
      name: "Downtown Office",
      state: Faker::Address.state,
      street: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      zip: Faker::Address.zip_code,
      cpt_code: cpt_codes[index],
      clinician: clinicians[1]
    })
end
4.times do |index| 
	Office.create({
      city: Faker::Address.city,
      name: "South Office",
      state: Faker::Address.state,
      street: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      zip: Faker::Address.zip_code,
      cpt_code: cpt_codes[index],
      clinician: clinicians[2]
    })
end
4.times do |index| 
	Office.create({
      city: Faker::Address.city,
      name: "West Office",
      state: Faker::Address.state,
      street: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      zip: Faker::Address.zip_code,
      cpt_code: cpt_codes[index],
      clinician: clinicians[2]
    })
end