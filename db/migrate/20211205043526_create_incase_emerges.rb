class CreateIncaseEmerges < ActiveRecord::Migration[6.1]
  def change
    create_table :incase_emerges do |t|
      t.integer :user_id
      t.integer :emergency_contact_number
      t.string :emergency_contact_name
      t.string :emergency_contact_address
      t.string :emergency_contact_email
      t.timestamps
    end
  end
end
