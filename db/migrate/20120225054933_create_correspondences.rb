class CreateCorrespondences < ActiveRecord::Migration
  def change
    create_table :correspondences do |t|
      t.date :date_received
      t.references :project
      t.references :correspondence_type
      t.references :representative
      t.references :stakeholder
      t.string :subject
      t.text :comment
      t.references :risk

      t.timestamps
    end
    add_index :correspondences, :correspondence_type_id
    add_index :correspondences, :representative_id
    add_index :correspondences, :stakeholder_id
    add_index :correspondences, :risk_id
  end
end
