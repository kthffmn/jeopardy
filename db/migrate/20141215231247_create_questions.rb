class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :answer
      t.integer :category_id
      t.integer :round_id
      t.integer :prize_id
      t.date :air_date
      t.integer :show_id
    end
  end
end
