Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :employees, :computers, :customers, :departments, :employee_computers, :orders, :order_details, :pay_methods, :product_types, :products, :training_classes, :training_seats

end
