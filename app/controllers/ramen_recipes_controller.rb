class RamenRecipesController < ApplicationController
  before_action :set_params, only: %i[create update]
  before_action :set_ramen_recipe, only: %i[show edit update destroy]

  def index
    @recipes = RamenRecipe.all + ComponentRecipe.all
  end

  def show
  end

  def new
    @ramen_recipe = RamenRecipe.new
  end

  def create
    @ramen_recipe = RamenRecipe.new(set_params)
    @ramen_recipe.user = current_user
    if @ramen_recipe.save
      redirect_to ramen_recipe_path(@ramen_recipe)
    else
      render :new
    end
  end

  def edit; end

  def update
    @ramen_recipe.update(set_params)
    if @ramen_recipe.save
      redirect_to ramen_recipe_path(@ramen_recipe)
    else
      render :edit
    end
  end

  def destroy
    @ramen_recipe.destroy
    redirect_to ramen_recipes_path
  end

  private
  def set_params
    params.require(:ramen_recipe).permit!
  end

  def set_ramen_recipe
    @ramen_recipe = RamenRecipe.find(params[:id])
  end
end
