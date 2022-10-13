class CreateResorts < ActiveRecord::Migration[7.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :email
      t.string :descrition

      t.timestamps
    end
  end
end
