class CharactersController < ApplicationController
  def show
      @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def index
    @characters = Character.ordered_by_name
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    # binding.pry
    if @character.save
      flash[:success] = "Character successfully created"
      redirect_to @character
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(character_params)
      flash[:success] = "Character was successfully updated"
      redirect_to @character
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  private
  def character_params
    params.require(:character).permit(:character_name, :user_id, :world_id, :health, :exp, :intelligence, :strength, :presence, :wits, :dexterity, :manipulation, :resolve, :stamina, :composure, :academics, :computer, :crafts, :investigation, :medicine, :occult, :politics, :science, :athletics, :brawl, :drive, :firearms, :larceny, :stealth, :survival, :weaponry, :animal_ken, :empathy, :expression, :intimidation, :persuasion, :socialize, :streetwise, :subtlefuge)
  end
end