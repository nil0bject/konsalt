class CreateCorrespondenceTypes < ActiveRecord::Migration
  def change
    create_table :correspondence_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
