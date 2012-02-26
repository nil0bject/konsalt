class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.string :organisation
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :post_address1
      t.string :post_address2
      t.string :post_address3
      t.string :post_suburb
      t.string :post_state
      t.string :post_postcode
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :email
      t.string :website
      t.text   :notes

      t.timestamps
    end
  end
end
