class CreateUmbrellas < ActiveRecord::Migration[7.0]
  def change
    create_table :umbrellas do |t|
      t.text :memory, null: false
      t.timestamps
    end
  end
end
