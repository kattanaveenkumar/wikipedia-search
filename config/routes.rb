Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'download_pdf', to: "search#download_pdf"
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
