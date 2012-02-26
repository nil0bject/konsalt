class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :name

      t.timestamps
    end
  end
end
