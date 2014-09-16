class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.belongs_to :user
      t.string :title
      t.text :description
      t.boolean :completed
      
      t.timestamps
    end
  end
end
