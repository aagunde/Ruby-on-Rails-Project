class CreateLostitems < ActiveRecord::Migration
  def change
    create_table :lostitems do |t|
      t.string :name
      t.string :color
      t.text :brand
      t.text :place_where_lost

      t.timestamps
    end
  end
end
