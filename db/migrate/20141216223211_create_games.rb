class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :show_id
    end
  end
end
