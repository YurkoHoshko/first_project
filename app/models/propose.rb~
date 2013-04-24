class Propose < ActiveRecord::Base



def self.search(search,search1,search3,search4,search5,search6,search7,search8,statuss,min_price,max_price,phone)

  if search
    find(:all,
	 :conditions => ['District LIKE ? and Address LIKE ?  and Count_of_rooms LIKE ? and Stage LIKE ? and House LIKE ? and Heating LIKE ? and Furniture LIKE ? and Condition LIKE ? and Status LIKE? and Price > ? and Price < ? and owner_phone LIKE ?',"%#{search}%" ,"%#{search1}%","%#{search3}%","%#{search4}%","%#{search5}%","%#{search6}%","%#{search7}%","%#{search8}%","%#{statuss}%","#{min_price}","#{max_price}","%#{phone}%"])
  else
    find(:all,
	 :conditions => ['Price > ? and Price <?   and Status LIKE ?',"#{min_price}","#{max_price}","%#{statuss}%"])
  end
end
end
