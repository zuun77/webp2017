class Post < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
	mount_uploader :logo_img, ClubLogoUploader
end
