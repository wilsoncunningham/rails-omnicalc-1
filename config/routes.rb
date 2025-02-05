Rails.application.routes.draw do
  get("/", {:controller => "square", :action => "new_square"})

  get("/square/new", {:controller => "square", :action => "new_square"})
  get("/square/results", {:controller => "square", :action => "compute_square"})

  get("/square_root/new", {:controller => "sqrt", :action => "new_sqrt"})
  get("/square_root/results", {:controller => "sqrt", :action => "compute_sqrt"})

  get("/payment/new", {:controller => "payment", :action => "new_payment"})
  get("/payment/results", {:controller => "payment", :action => "compute_payment"})

  get("/random/new", {:controller => "random", :action => "new_random"})
  get("/random/results", {:controller => "random", :action => "compute_random"})
end
