class Propose < ActiveRecord::Base

def self.search(search,search1,search2,search3,search4,search5,search6,search7,search8)
  if search
    find(:all,
	 :conditions => ['District LIKE ? and Address LIKE ? and Price LIKE ? and Count_of_rooms LIKE ? and Stage LIKE ? and House LIKE ? and Heating LIKE ? and Furniture LIKE ? and Condition LIKE ?',"%#{search}%" ,"%#{search1}%","%#{search2}%","%#{search3}%","%#{search4}%","%#{search5}%","%#{search6}%","%#{search7}%","%#{search8}%"])
  else
    find(:all)
  end
end
end
