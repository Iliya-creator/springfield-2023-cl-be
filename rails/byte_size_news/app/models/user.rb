class User < ApplicationRecord
    validates :first_name, :last_name, :date_of_birth, :gender, presence: true

    def self.search(query) 
      where("lower(first_name) LIKE :query OR lower(last_name) LIKE :query OR lower(date_of_birth) LIKE :query OR lower(gender) LIKE :query", query: "%#{query}%")
    end
end
