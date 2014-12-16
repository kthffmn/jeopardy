class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.integer :amount
    end
  end
end
