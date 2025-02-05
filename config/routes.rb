Rails.application.routes.draw do
  get("/", {:controller => "square", :action => "new_square"})
  get("/square_root/new", {:controller => "sqrt", :action => "compute_sqrt"})
  get("/payment/new", {:controller => "payment", :action => "compute_payment"})
  get("/random/new", {:controller => "random", :action => "compute_random"})
end
