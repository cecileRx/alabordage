class MarinesController < ApplicationController
  def index
    @marines = Marine.all
     @marine = Marine.new
  end


  def create
    @marine = Marine.new(marine_params)

    if @marine.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private
  def marine_params
     params.require(:marine).permit(:first_name, :last_name)
  end
end
