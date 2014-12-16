class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :number
    end
  end
end
