class CommerceDemand < ActiveRecord::Base
	  


def self.search(search,search1,statuss,phone)
  if search
    find(:all, :conditions => ['district LIKE ? and street LIKE ? and Status LIKE ? and phone LIKE ?',"%#{search}%" ,"%#{search1}%","%#{statuss}%","%#{phone}%"])
  else
    find(:all)
  end
end


end
