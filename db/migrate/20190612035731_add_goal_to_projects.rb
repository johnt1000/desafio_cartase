class AddGoalToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :goal, :decimal, precision: 8, scale: 2, null: false
  end
end
