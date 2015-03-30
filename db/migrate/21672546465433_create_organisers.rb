class CreateOrganisers < ActiveRecord::Migration
  def change
    create_table :organisers do |t|
      t.string :name
      t.string :college
      t.text :event_title
      t.text :event_type

      t.timestamps
    end
  end
end
