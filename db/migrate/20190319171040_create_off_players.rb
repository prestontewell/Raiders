class CreateOffPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :off_players do |t|
      t.string :name
      t.string :number
      t.string :position

      t.timestamps
    end
  end
end
