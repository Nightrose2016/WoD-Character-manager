class WorldsController < ApplicationController
    
  def show
      @world = World.find(params[:id])
  end

  def new
      @world = World.new
  end

  def index
      @worlds = World.ordered_by_name
  end

  def edit
      @world = World.find(params[:id])
  end

  def update
      world = World.find_by_id(params[:id])
      if world.update(world_params)
          redirect_to world_path(world)
      else
          flash[:error] = 'World did not update.'
          render edit_world_path(world)
      end
  end

  def create
      @world = World.new(world_params)
      if @world.save

          flash[:success] = "World successfully created"
          redirect_to @world
      else
          flash[:error] = "Something went wrong"
          render 'new'
      end
  end
  
  private
  def world_params
      params.require(:world).permit(:user_id, :name)
  end
end