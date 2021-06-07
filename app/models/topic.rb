class Topic < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  belongs_to :user

  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
