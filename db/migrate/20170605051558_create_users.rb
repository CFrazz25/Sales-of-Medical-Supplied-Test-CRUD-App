class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.integer :center_code
      t.boolean :admin
      t.string :hashed_password, null: false
      t.string :secret_key

      t.timestamps
    end
  end
end
