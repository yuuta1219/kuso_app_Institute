class CreateUmbrellas < ActiveRecord::Migration[7.0]
  def change
    create_table :umbrellas do |t|
      t.string :title, null: false
      t.text :memory, null: false
      t.string :stolen_place
      t.references :user, null: false, foreign_key: true  
      t.timestamps
    end
  end
end
