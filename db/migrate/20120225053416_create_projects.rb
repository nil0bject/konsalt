class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :number
      t.string :name
      t.string :state
      t.string :region
      t.text :description

      t.timestamps
    end
  end
end
