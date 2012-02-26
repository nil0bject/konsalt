class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :first_name
      t.string :surname
      t.references :stakeholder
      t.string :mobile
      t.text :notes

      t.timestamps
    end
    add_index :representatives, :stakeholder_id
  end
end
