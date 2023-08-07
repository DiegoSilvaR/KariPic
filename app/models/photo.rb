class Photo < ApplicationRecord
  belongs_to :person
  has_many :comments, dependent: :destroy
  mount_uploader :image, PhotoUploader
end
