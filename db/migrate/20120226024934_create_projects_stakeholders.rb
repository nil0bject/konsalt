class CreateProjectsStakeholders < ActiveRecord::Migration
  def change
    create_table :projects_stakeholders do |t|
      t.integer :project_id
      t.integer :stakeholder_id

      t.timestamps
    end
  end
end
