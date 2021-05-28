class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  
  validates :password, presence: true, length: { minimum: 8, maximum: 32}
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :name, presence: true, length: { maximum: 15}

end


