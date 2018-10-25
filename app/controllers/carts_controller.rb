class CartsController < ApplicationController

  def create
    song = Song.find(params[:song_id])
    session[:cart] ||= Hash.new(0)
    session[:cart][song.id] = session[:cart][song.id] + 1
    redirect_to songs_path, notice: "Added #{song.title} to Cart"
  end

end
