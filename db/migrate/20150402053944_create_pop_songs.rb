class CreatePopSongs < ActiveRecord::Migration
  def change
    create_table :pop_songs do |t|
      t.string :title
      t.string :artist
      t.string :path
      t.integer :votes
      t.references :musician, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
