class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :category
      t.integer :points

      t.timestamps
    end
  end
end
