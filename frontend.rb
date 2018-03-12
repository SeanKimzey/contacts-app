require 'unirest'

response = Unirest.get("http://localhost:3000/v1/show_contacts")

puts JSON.pretty_generate(response.body)




