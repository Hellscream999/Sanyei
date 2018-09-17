class CreateHandymen < ActiveRecord::Migration[5.1]
  def change
    create_table :handymen do |t|

      t.timestamps
    end
  end
end
