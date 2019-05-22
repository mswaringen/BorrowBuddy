class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, foreign_key: "owner_id", dependent: :destroy
  has_many :bookings
  has_one :profile
  after_save :create_profile

  validates :email, uniqueness: true, presence: true


  def create_profile
    profile = Profile.new
    profile.user = self
    profile.save
  end
end
