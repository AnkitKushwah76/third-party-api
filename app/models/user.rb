class User < ApplicationRecord
  has_many :repositories
  validates :user_name, uniqueness: true
  BASE_URI="https://api.github.com/users"
  def self.user_create(response)
    hash_object= JSON.parse(response.body)
    begin
      User.create!(user_name:hash_object["login"])
     rescue => exception
      "Username  has already exists"
    end
   
  end
end

