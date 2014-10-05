class FollowsController < ApplicationController
  
  def follow_poi
    @poi = Poi.find(params[:poi_id])
    current_user.follow!(@poi)

    respond_to do |format|
      format.js
    end

  end

  def unfollow_poi
    @poi = Poi.find(params[:poi_id])
    current_user.unfollow!(@poi)

    respond_to do |format|
      format.js
    end
    
  end

end
