class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.belongs_to :notable, polymorphic: true
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
