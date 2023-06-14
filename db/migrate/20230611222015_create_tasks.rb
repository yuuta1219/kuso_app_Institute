class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
