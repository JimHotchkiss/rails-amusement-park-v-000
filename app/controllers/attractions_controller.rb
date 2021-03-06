class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create

    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render :new
    end
  end

  def edit
     find_attraction
  end

  def update

    

  end

  def show
    find_attraction
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end

  def find_attraction
    @attraction = Attraction.find_by(id: params[:id])
  end

end
