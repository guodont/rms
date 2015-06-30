class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #VALID_PHONE_REGEX = /\A^[1][358][0-9]{9}$/
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #validates :phone, presence: false, length: { maximum: 11 },
  #                  format: { with: VALID_PHONE_REGEX }
  has_secure_password
  validates :password, length: { minimum: 6 }, allow_blank: true
  
end
