class CreatePatrons < ActiveRecord::Migration[7.1]
  def change
    create_table :patrons do |t|
      t.string :name
      t.integer :library_card_number

      t.timestamps
    end
  end
end
