class User < ActiveRecord::Base
	
  has_many_attaches :photos
end
