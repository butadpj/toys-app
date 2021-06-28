class User < ApplicationRecord
    has_secure_password

    has_many :my_toys, dependent: destroy
end
