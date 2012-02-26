class CreateProjectsRepresentatives < ActiveRecord::Migration
  def change
    create_table :projects_representatives do |t|
      t.integer :project_id
      t.integer :representative_id

      t.timestamps
    end
  end
end
