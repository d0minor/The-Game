class Card < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
