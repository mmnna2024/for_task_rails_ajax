class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.create(blog_id: params[:blog_id])
    #@favorite.save
    #redirect_to blogs_path
  end

  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id]).destroy
    #@favorite.save
    #redirect_to blogs_path
  end

end
