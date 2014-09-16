class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.belongs_to :adventure, index: true
      t.string :title
      t.text :description
      t.string :reward
      t.integer :experience
      t.boolean :completed

      t.timestamps
    end
  end
end
