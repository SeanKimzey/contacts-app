require 'unirest'

response = Unirest.get("http://localhost:3000/all_contacts")

contacts = response.body
contact_num = 1

contacts.each do |contact|
p "Contact #{contact_num}:"
p "first name: #{contact['first_name']}"
p "last name: #{contact['last_name']}"
p "email: #{contact['email']}"
p "phone number: #{contact['phone_number']}"
p "-" * 20 
contact_num += 1
end