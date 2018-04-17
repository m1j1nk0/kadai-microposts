class LikesController < ApplicationController
  def create
    like = Micropost.find(params[:micropost_id])
    current_user.make_favorite(like)
    flash[:success] = "お気に入りにしました☆"
    redirect_back(fallback_location: root_path)
  end

  def destroy
    like = Micropost.find(params[:micropost_id])
    current_user.remove_favorite(like)
    flash[:success] = "お気に入りから外しました"
    redirect_back(fallback_location: root_path)
    
  end
end
