class CreateDemographics < ActiveRecord::Migration[6.1]
  def change
    create_table :demographics do |t|
      t.integer :user_id
      t.string :email
      t.string :gender
      t.string :marital_status
      t.integer :height
      t.integer :weight
      t.string :race
      t.string :ethnicity
      t.string :income_group
      t.boolean :blue_button_approval
      t.string :consent

      t.timestamps
    end
  end
end
