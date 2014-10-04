class HomeController < ApplicationController
  
  def home
    @pois = Poi.all
    
  end
  
end
