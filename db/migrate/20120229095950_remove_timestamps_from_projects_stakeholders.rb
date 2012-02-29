class RemoveTimestampsFromProjectsStakeholders < ActiveRecord::Migration
  def up
    remove_column :projects_stakeholders, :created_at
    remove_column :projects_stakeholders, :updated_at
  end

  def down
    add_column :projects_stakeholders, :updated_at, :datetime
    add_column :projects_stakeholders, :created_at, :datetime
  end
end
