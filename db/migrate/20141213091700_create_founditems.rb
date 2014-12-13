class CreateFounditems < ActiveRecord::Migration
  def change
    create_table :founditems do |t|
      t.string :name
      t.string :color
      t.text :brand
      t.text :place_where_found

      t.timestamps
    end
  end
end
