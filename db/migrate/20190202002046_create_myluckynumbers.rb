class CreateMyluckynumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :myluckynumbers do |t|
      t.integer  :bonus
      t.text     :winning_numbers
   #   t.date     :draw_date
      t.timestamps
    end
  end
end
