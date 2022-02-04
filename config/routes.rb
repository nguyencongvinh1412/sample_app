Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    resource :static_pages, only: [:home, :help] do
      get '/home', to: 'static_pages#home'
      get '/help', to: 'static_pages#help'
    end
  end
end
