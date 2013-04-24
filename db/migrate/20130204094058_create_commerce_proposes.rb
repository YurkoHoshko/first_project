class CreateCommerceProposes < ActiveRecord::Migration
  def change
    create_table :commerce_proposes do |t|
  t.string   "Condition"
    t.integer  "Stage"
    t.string   "Type_fond"
    t.string   "District"
    t.string   "Street"
    t.decimal  "Square"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.string   "Type"
    t.string   "Heating"
    t.string   "Furniture"
    t.string   "Owner_name"
    t.string   "Owner_phone"
    t.datetime "Last_date"
    t.string   "Status"
    t.string   "Other"
    t.datetime "created_at"
    t.datetime "updated_at"
      t.timestamps
    end
  end
end
