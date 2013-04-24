class CreateCommerceDemands < ActiveRecord::Migration
  def change
    create_table :commerce_demands do |t|
    t.string   "district"
    t.string   "street"
    t.decimal  "square"
    t.decimal  "price"
    t.string   "reason"
    t.string   "name"
    t.string   "phone"
    t.datetime "Last_date"
    t.string   "Status"
    t.string   "Other"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
      t.timestamps
    end
  end
end
