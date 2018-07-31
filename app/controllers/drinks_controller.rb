class DrinksController < ApiController

  # GET /drinks
  def index
    @drinks = Drink.slect("id, title").all

    render json: @drinks.to_json
  end

  # GET /drinks/1
  def show
    @drink = @drink.find(params[:id])
    render json: @drink.to_json(:include => { :ingredients => { :only => [:id, :description]}})
  end

end
