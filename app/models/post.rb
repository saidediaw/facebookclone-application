class Post < ApplicationRecord
  #Uploader definition
   mount_uploader :image, ImageUploader
   validates :image, presence: true
    validates :content, presence: true
    belongs_to :user
end
