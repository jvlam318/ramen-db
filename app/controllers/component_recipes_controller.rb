class ComponentRecipesController < ApplicationController
  before_action :set_params, only: %i[create update]
  before_action :set_component_recipes, only: %i[show edit update destroy]

  def index
    @component_recipes = ComponentRecipe.all
  end

  def show
  end

  def new
    @component_recipes = ComponentRecipe.new
  end

  def create
    @component_recipes = ComponentRecipe.new(set_params)
    @component_recipes.user = current_user
    if @component_recipes.save
      redirect_to Component_recipes_path(@component_recipes)
    else
      render :new
    end
  end

  def edit; end

  def update
    @component_recipes.update(set_params)
    if @component_recipes.save
      redirect_to Component_recipes_path(@component_recipes)
    else
      render :edit
    end
  end

  def destroy
    @component_recipes.destroy
    redirect_to Component_recipess_path
  end

  private
  def set_params
    params.require(:Component_recipes).permit!
  end

  def set_component_recipes
    @component_recipes = ComponentRecipe.find(params[:id])
  end

end
