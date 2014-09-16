class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.belongs_to :user, index: true
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
