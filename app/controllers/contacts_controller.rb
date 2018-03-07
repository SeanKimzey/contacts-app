class ContactsController < ApplicationController
  def seans_contacts
    contacts = Contact.all
    render json: contacts.as_json
  end
end


