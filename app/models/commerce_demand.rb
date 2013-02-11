class CommerceDemand < ActiveRecord::Base
	  


def self.search(search,search1)
  if search
    find(:all, :conditions => ['district LIKE ? and street LIKE ?',"%#{search}%" ,"%#{search1}%"])
  else
    find(:all)
  end
end


end
