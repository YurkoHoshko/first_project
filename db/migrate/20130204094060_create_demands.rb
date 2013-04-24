class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
    t.string   "district"
    t.string   "street"
    t.decimal  "square"
    t.decimal  "price"
    t.string   "reason"
    t.string   "name"
    t.string   "phone"
    t.string   "Other"
    t.string   "Time_to_find"
    t.string   "Term"
    t.datetime  "Last_date"
    t.string   "Status"
    t.integer  "Count_of_rooms"
    
  

    t.timestamps
    end
  end
end
