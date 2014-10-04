class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string   "name"
      t.text     "description"
      t.string   "email_address"
      t.string   "phone_number"
      t.string   "website_url"
      t.string   "addr_floor"
      t.string   "addr_unit"
      t.string   "addr_block"
      t.string   "addr_street"
      t.string   "addr_building"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
      t.text     "logo"
      
      t.timestamps
    end
  end
end
