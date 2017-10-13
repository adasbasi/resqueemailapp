Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	mount ResqueWeb::Engine => "/admin/resque_web"
	root to: 'welcome#index'

	get 'welcome/sendmail' => 'welcome#sendmail'
	match 'welcome/sendmail' => 'welcome#sendmail', via: :post
end
