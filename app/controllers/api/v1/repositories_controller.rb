class Api::V1::RepositoriesController < ApplicationController

  def user_name
    response = HTTParty.get(User::BASE_URI+"/#{params[:user]}")
    user = User.user_create(response)
    render json:{user_name:user}
  end

  def user_repos
    response = HTTParty.get(User::BASE_URI+"/#{params[:user]}/#{params[:repo]}")
    repo = Repository.create_repo(response,params[:user])
    render json:repo 
  end
end
