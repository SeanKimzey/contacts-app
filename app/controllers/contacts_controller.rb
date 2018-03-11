class ContactsController < ApplicationController
  def contact_read

    render json: Contact.all.as_json
  end

end
