class PrivateRealtyDemand < ActiveRecord::Base


def self.search(search,search1,search2,search3,search4,statuss,phone)
 if search
    find(:all, :conditions => ['District LIKE ? and Count_of_rooms LIKE ?  and  Condition LIKE ? and  Square LIKE ? and Heating LIKE ? and Status LIKE? and Contacts LIKE ?',"%#{search}%" ,"%#{search1}%","%#{search2}%","%#{search3}%","%#{search4}%","%#{statuss}%","%#{phone}%"])
  else
    find(:all)
end
end
end
