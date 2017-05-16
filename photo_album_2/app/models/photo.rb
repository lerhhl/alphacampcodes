class Photo < ApplicationRecord
   mount_uploader :file_location, PhotoImageUploader
   validates :title, :date, :description, :file_location, presence: true 
end