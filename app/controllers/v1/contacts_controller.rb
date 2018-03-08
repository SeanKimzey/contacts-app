class V1::ContactsController < ApplicationController
  def seans_contacts
    contacts = Contact.all
    contacts_hashes = []

    contacts.each do |contact|
      the_contact_hash = {first_name: contact.first_name, last_name: contact.last_name, phone_number: contact.phone_number, email: contact.email}
      contacts_hashes<<the_contact_hash
    end
    render json: contacts_hashes
  end
end


