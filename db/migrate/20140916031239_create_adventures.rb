class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
