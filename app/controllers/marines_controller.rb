class MarinesController < ApplicationController
  def index
    @marines = Marine.all
    @marine = Marine.new
  end

  def create
    @marine = Marine.new(marine_params)

    first_name = params[:marine][:first_name]


    if @marine.save
      flash[:notice] = "A new sailor is on board! Welcome #{first_name.capitalize}! "
      redirect_to root_path
    else
      flash[:notice] = "Hey Sailor! You should enter your name to get on board!"
      redirect_to root_path
    end
  end

  private
  def marine_params
     params.require(:marine).permit(:first_name)
  end
end
