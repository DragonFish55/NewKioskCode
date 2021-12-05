class CreateInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :insurances do |t|
      t.integer :user_id
      t.string :insurance_no
      t.string :rx_group
      t.string :rx_bin
      t.string :rx_pcn
      t.string :rx_insurancetype
      t.string :providerName
      t.string :priorityChoice

      t.timestamps
    end
  end
end
