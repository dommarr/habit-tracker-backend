class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :habits, :streak, :integer, default: 0
  end
end
