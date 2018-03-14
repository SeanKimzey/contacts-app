class Contact < ApplicationRecord

  def as_json
    {
      id: id,
      First_name: first_name,
      Middle_name: middle_name,
      Last_name: last_name,
      Email: email,
      Full_name: full_name,
      Bio: bio,
      Created_on: friendly_created_on,
      Phone_Number_Japan: phone_number_with_extension
    }
  end

  def friendly_created_on
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def phone_number_with_extension
    "+81 #{phone_number}"
  end

end
