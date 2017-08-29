class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :genre
      t.text :synopsis
      t.integer :year
      t.string :picture

      t.timestamps
    end
  end
end
