class ComponentRecipesController < ApplicationController
  before_action :set_params, only: %i[create update]
  before_action :set_component_recipes, only: %i[show edit update destroy]

  def index
    @Component_recipes = ComponentRecipe.all
  end

  def show
  end

  def new
    @Component_recipes = ComponentRecipe.new
  end

  def create
    @Component_recipes = ComponentRecipe.new(set_params)
    @Component_recipes.user = current_user
    if @Component_recipes.save
      redirect_to Component_recipes_path(@Component_recipes)
    else
      render :new
    end
  end

  def edit; end

  def update
    @Component_recipes.update(set_params)
    if @Component_recipes.save
      redirect_to Component_recipes_path(@Component_recipes)
    else
      render :edit
    end
  end

  def destroy
    @Component_recipes.destroy
    redirect_to Component_recipess_path
  end

  private
  def set_params
    params.require(:Component_recipes).permit!
  end

  def set_component_recipes
    @Component_recipes = ComponentRecipe.find(params[:id])
  end

end
