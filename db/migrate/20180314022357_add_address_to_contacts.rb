class AddAddressToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :address, :text
  end
end
