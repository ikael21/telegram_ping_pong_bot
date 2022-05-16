# frozen_string_literal: true

class CreateTeamsAndPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nickname, null: false
      t.timestamps
    end

    create_table :players_teams, id: false do |t|
      t.belongs_to :team
      t.belongs_to :player
    end
  end
end
