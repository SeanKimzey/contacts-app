class V1::ContactsController < ApplicationController
  
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def show
    the_id = params[:id]
    contact1 = Contact.find_by(id: the_id)
    render json: contact1.as_json
  end

  def create
 
    contact1 = Contact.new(
      first_name: params[:the_first_name],
      last_name: params[:the_last_name],
      email: params[:the_email],
      phone_number: params[:the_phone_number]
    )
    contact1.save
    render json: contact1.as_json
  end

  def update
    
    the_id = params[:id]
    contact1 = Contact.find_by(id: the_id)
    contact1.first_name = params[:the_first_name]
    contact1.last_name = params[:the_last_name]
    contact1.email = params[:the_email]
    contact1.phone_number = params[:the_phone_number]
    contact1.save
    render json: contact1.as_json
  end

  def destroy
   
    the_id = params[:id]
    contact1 = Contact.find_by(id: the_id)
    contact1.destroy
    render json: {message: "You deleted the contact with id of #{the_id}"}
  end


end
