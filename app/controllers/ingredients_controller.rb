class IngredientsController < ApplicationController
  # GET /ingredients
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient
  end

  # POST /ingredients
  def create
    @ingredient = Ingredient.create({
      name: params[:name],
      foodGroup: params[:foodGroup],
      protein: params[:protein],
      fat: params[:fat],
      carbohydrates: params[:carbohydrates],
      calories: params[:calories],
      sugar: params[:sugar],
      calcium: params[:calcium],
      potassium: params[:potassium],
      vitaminA: params[:vitaminA],
      vitaminC: params[:vitaminC],
      folate: params[:folate],
      img: params[:img]
    })
    
    render json: @ingredient, status: :created, location: @ingredient
  end

  # PATCH/PUT /ingredients/1
  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.update({
      name: params[:name],
      foodGroup: params[:foodGroup],
      protein: params[:protein],
      fat: params[:fat],
      carbohydrates: params[:carbohydrates],
      calories: params[:calories],
      sugar: params[:sugar],
      calcium: params[:calcium],
      potassium: params[:potassium],
      vitaminA: params[:vitaminA],
      vitaminC: params[:vitaminC],
      folate: params[:folate],
      img: params[:img]
    })
    
    render json: @ingredient
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
  end
end
