class CommercePropose < ActiveRecord::Base

def self.search(search,search1,search2,search3,search4,search5)
  if search
    find(:all,
	 :conditions => ['District LIKE ? and Street LIKE ? and Square LIKE ? and Stage LIKE ? and Type_fond LIKE ? and Condition LIKE ?',"%#{search}%" ,"%#{search1}%","%#{search2}%","%#{search3}%","%#{search4}%","%#{search5}%"])
  else
    find(:all)
  end
end

end