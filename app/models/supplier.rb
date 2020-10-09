class Supplier < ApplicationRecord
	has_one :account, dependent: :destroy
	# validates_presence_of :name
	mount_uploader :image, ImageUploader
	# attr_accessor :name
    # has_attached_file :photo
    # validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
    # do_not_validate_attachment_file_type :photo
    # validates_attachment :photo, presence: true,
    # content_type: { content_type: "image/jpeg" },
    # size: { in: 0..10.kilobytes }
    # has_one_attached:image
end
