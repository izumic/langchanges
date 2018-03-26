class GenresController < ApplicationController
  before_action :require_user_logged_in
  
  def create
  end

  def destroy
    @genre.destroy
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:content)
  end
  
  def correct_user
    @genre = current_user.genres.find_by(id: params[:id])
  end
  
end
