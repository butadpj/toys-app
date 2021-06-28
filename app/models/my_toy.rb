class MyToy < ApplicationRecord
    belongs_to :user

    delegate :username, to: :user
    delegate :first_name, to: :user
    delegate :last_name, to: :user

    has_many_attached :image    
end
