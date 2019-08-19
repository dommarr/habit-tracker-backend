class ChangeGoalColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :goals, :complete, :boolean, default: false
  end
end
