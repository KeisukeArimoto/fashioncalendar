class User < ApplicationRecord
 
#   VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])\w{8,32}\z/
#     VALID_EMAIL_REGEX = /\A^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$\z/
    
     VALID_EMAIL_REGEX =/\A^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-]).([a-zA-Z0-9\._-]+)+\z/i
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i

    validates :name, presence: true, length: { maximum: 15 }  
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true, confirmation: true, format: { with: VALID_PASSWORD_REGEX }
    validates :password_confirmation, presence: true
    
    has_secure_password

end
