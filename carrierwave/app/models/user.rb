class User < ActiveRecord::Base
	mount_uploader :picture, UserAvatarUploader
end