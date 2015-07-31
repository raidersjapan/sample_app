class AddAgeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :age, :integer
  end
end
