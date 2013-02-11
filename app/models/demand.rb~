class Demand < ActiveRecord::Base


def self.search(search,search1,search2)
  if search
    find(:all,
	 :conditions => ['District LIKE ? and Price LIKE ? and Count_of_rooms LIKE ? ',"%#{search}%" ,"%#{search1}%","%#{search2}%"])
  else
    find(:all)
  end
end
end
