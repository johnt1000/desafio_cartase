class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :descripton
      t.string :image
      t.decimal :amount, precision: 8, scale: 2, null: false

      t.timestamps
    end
  end
end
