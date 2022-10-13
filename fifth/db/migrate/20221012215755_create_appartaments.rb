class CreateAppartaments < ActiveRecord::Migration[7.0]
  def change
    create_table :appartaments do |t|
      t.string :room_type
      t.string :description
      t.integer :resort_id

      t.timestamps
    end
  end
end
