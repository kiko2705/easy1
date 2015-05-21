EasyOpenSource::Application.routes.draw do

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  devise_for :users
  resources  :projetos 
  resources  :items
  resources  :caixas
  resources  :qualificacaos
  resources  :forem 

  # Usamos esta linha para redirecionar após sign_up para pagina desejada
  #devise_for :users, :controllers => { :registrations => "registrations" }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'projetos#index'

  get  'static_pages/home', as: :home
  root 'static_pages#home'
  #quando acessar,  localhost:3000/pesquisar, irá buscar o método search no controller projetos
  # e terá como apelido para referÊncia search_projetos_path
  
  get 'qualificacaos/technical_skills'     => 'qualificacaos#technical_skills', as: :technical_skills
  get 'qualificacaos/soft_skills'          => 'qualificacaos#soft_skills', as: :soft_skills
  get 'qualificacaos/resources_available'  => 'qualificacaos#resources_available', as: :resources_available
  #get 'search_novatos'  => 'qualificacaos#search', as: :search_novatos_qualificacaos

  get 'pagina_projeto'  => 'projetos#pagina_projeto', as: :paginas_projeto
  get 'projetos/index'  => 'projetos#index', as: :projetos_path
  get 'projetos/search' => 'projetos#search', as: :projetos_search
  #get 'projetos/lista'  => 'projetos#lista_projetos', as: :projetos_lista

  # aqui irá o pesquisar avançado
  #get '/projetos/lista_projetos' => 'projetos#lista_projetos', as: :lista_projetos

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
