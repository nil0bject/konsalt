class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :surname
      t.string :phone
      t.string :email
      t.string :mobile

      t.timestamps
    end
  end
end
