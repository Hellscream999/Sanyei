class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_type
      t.integer :profile_id
      t.string :nick_name
      t.string :address
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
