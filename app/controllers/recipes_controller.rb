class RecipesController < ApplicationController

  before_action :define_current_recipe

  def define_current_recipe
    if params[:id]
      @recipe = Recipe.find(params[:id])
    else
      @recipe = Recipe.new
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :name,
      :quantity
      ]
    )
  end


  def show
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe.ingredients.build()
    @recipe.ingredients.build()
  end

  def create
    @recipe.assign_attributes(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end
end
