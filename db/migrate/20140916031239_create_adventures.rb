class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.text :description, null: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
