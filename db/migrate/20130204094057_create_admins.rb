class CreateProposes < ActiveRecord::Migration
  def change
    create_table :proposes do |t|
    t.string   "District"
    t.string   "Address"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.integer  "Stage"
    t.string   "House"
    t.string   "heating"
    t.string   "furniture"
    t.string   "condition"
    t.string   "Owner_name"
    t.string   "owner_phone"
    t.boolean  "Able"
    t.datetime     "Last_date"
       t.string   "Status"
    t.string   "Other"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false

      t.timestamps
    end
  end
end
