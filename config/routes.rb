Rails.application.routes.draw do
  namespace :v1 do
    get '/all_contacts' => 'contacts#seans_contacts'
  end
end
