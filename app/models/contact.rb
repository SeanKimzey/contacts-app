class Contact < ApplicationRecord

  def as_json
    {
      id: id,
      first_name: first_name,
      last_name: last_name,
      email: email,
      Created_on: friendly_created_on,
      full_name: full_name,
      middle_name: middle_name,
      bio: bio
    }
  end

  def friendly_created_on
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} " + "#{last_name}"
  end
 
end
