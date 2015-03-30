class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :college
      t.text :interested_event
      t.text :year_of_engg

      t.timestamps
    end
  end
end
