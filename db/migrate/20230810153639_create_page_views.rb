class CreatePageViews < ActiveRecord::Migration[7.0]
  def change
    create_table :page_views do |t|
      t.integer :count

      t.timestamps
    end
  end
end
