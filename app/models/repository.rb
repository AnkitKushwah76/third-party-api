class Repository < ApplicationRecord
  belongs_to :user
  validates :repo_name, uniqueness: true
  def self.create_repo(response,user)
    user1=User.find_by(user_name:user)
    JSON.parse(response.body).each do |rep|
    Repository.create(repo_name:rep["name"],stargazers_count:rep["stargazers_count"],user_id:user1.id)
  end
  end
end
