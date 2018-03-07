require 'unirest'

response = Unirest.get("http://localhost:3000/all-contacts")

p response.body 