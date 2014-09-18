class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
