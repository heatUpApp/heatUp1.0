class CreateClassicalSongs < ActiveRecord::Migration
  def change
    create_table :classical_songs do |t|
      t.string :title
      t.string :artist
      t.string :path
      t.integer :votes
      t.references :musician, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
