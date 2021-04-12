class FavoritesController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
#    puts micropost.to_json
#binding.pry
    current_user.favorite(micropost)
    flash[:success] = '投稿をお気に入りに追加しました。'
    redirect_to likes_user_path(current_user)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
#binding.pry
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to likes_user_path(current_user)
  end
end
