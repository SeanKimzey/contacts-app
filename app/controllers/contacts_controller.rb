class ContactsController < ApplicationController
  def seans_contacts
    contacts = Contact.all
    render json: {contacts: Contact.all}
  end
end


