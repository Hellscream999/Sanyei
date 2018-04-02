class AddProfessionToHandyman < ActiveRecord::Migration[5.1]
  def change
    add_column :handymen, :profession, :string
  end
end
