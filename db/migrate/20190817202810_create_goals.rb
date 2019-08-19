class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :description
      t.date :due_date
      t.boolean :complete

      t.timestamps
    end
  end
end
