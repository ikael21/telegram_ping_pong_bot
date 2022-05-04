class CreateTournamentsAndLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :type
      t.timestamps
    end

    create_table :leagues do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :leagues_tournaments, id: false do |t|
      t.belongs_to :tournament
      t.belongs_to :league
    end
  end
end
