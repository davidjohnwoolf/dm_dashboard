class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.belongs_to :adventure, index: true
      t.string :title
      t.text :description
      t.string :reward
      t.integer :experience
      t.boolean :completed
      #figure out how to validate without effecting nested_form

      t.timestamps
    end
  end
end
