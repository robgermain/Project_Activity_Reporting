Rails.application.routes.draw do
  resources :project_team_employee_report_tasks

  resources :project_team_employee_reports

  resources :tasks

  resources :task_types

  resources :builds

  resources :releases

  resources :applications

  resources :report_statuses

  resources :project_team_employees

  resources :project_team_roles

  resources :project_teams

  resources :project_organizations

  resources :project_organization_types

  resources :projects

  resources :system_roles

  resources :users

  resources :employees

  resources :organizations
	post "organizations/:id/activate" => "organizations#activate", as: "activate_organization"
	post "organizations/:id/deactivate" => "organizations#deactivate", as: "deactivate_organization"
	post "organizations/:id/do_delete" => "organizations#do_delete", as: "do_delete_organization"
	post "organizations/:id/undo_delete" => "organizations#undo_delete", as: "undo_delete_organization"

	get 'home/index'

	resources :users

	resources :roles

	resources :employers
	post "employers/:id/activate" => "employers#activate", as: "activate_employer"
	post "employers/:id/deactivate" => "employers#deactivate", as: "deactivate_employer"
	post "employers/:id/do_delete" => "employers#do_delete", as: "do_delete_employer"
	post "employers/:id/undo_delete" => "employers#undo_delete", as: "undo_delete_employer"

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	root 'home#index'

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
