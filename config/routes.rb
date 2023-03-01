Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'user_name/:user',to:'repositories#user_name'
      get 'user_repos/:user/:repo',to:'repositories#user_repos'
    end
  end

end
