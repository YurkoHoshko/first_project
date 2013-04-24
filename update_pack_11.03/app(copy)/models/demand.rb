class Demand < ActiveRecord::Base


def self.search(search,search2,min_price,max_price,statuss,phone)
  if search
    find(:all,
	 :conditions => ['District LIKE ? and Price > ? and Price < ? and Count_of_rooms LIKE ?  and Status LIKE ? and phone LIKE ?',"%#{search}%" ,"#{min_price}","#{max_price}","%#{search2}%","%#{statuss}%","%#{phone}%"])
  else
    find(:all,
	 :conditions => ['Price > ? and Price < ? and Status LIKE ?',"#{min_price}","#{max_price}","%#{statuss}%"])
  end
end
end
