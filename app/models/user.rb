# Has an email string field
# Has an password_digest string field
# 
# password string virtuasl attribute
# password_confirmation string virtual attribute

class User < ApplicationRecord
    has_secure_password
end
