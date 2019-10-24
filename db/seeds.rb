require 'faker'
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all

10.times do |index|
	job = ["généraliste", "ostéopathe", "homeopathe","psychiatre"]
	p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: job.sample ,zip_code: Faker::Address.zip_code)
	a = Appointment.new
	c = City.create(name: Faker::Address.city)
	a.doctor = d
	a.patient = p
	a.date = Faker::Date.in_date_period
	a.save 
end

puts "OK"
