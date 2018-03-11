require 'faker'

contact3 = Contact.new(first_name: "Joe", last_name: "Shwetertoe", email: "joeshmoe@joe.com", phone_number: "68786878")

5.times do
  contact6 = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number)

  contact6.save

end


