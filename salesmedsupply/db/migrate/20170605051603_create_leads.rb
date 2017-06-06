class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :disposition, null: false
      t.string :status, null: false
      t.integer :center_code, null: false
      
      t.timestamps
    end
  end
end
