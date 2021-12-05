class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :password
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone_no
      t.string :user_type
      t.boolean :login

      t.timestamps
    end
  end
end
