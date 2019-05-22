class Item < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  mount_uploader :photo, PhotoUploader


  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  # validates :availability, presence: true -- uncomment this when we work without seed, marisa.
end
