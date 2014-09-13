class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.belongs_to :user
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
