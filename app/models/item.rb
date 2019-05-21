class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :owner, class_name: "User"
  has_many :bookings
end
