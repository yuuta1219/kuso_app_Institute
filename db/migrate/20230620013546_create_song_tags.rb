class CreateSongTags < ActiveRecord::Migration[7.0]
  def change
    create_table :song_tags do |t|
      t.references :song, foreign_key: true, null: false
      t.references :tag, foreign_key: true, null: false
      t.timestamps
    end
  end
end
