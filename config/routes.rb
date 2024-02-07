Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "game" })

  get("/dice/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "two" })
end
