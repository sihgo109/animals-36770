class AnimalsController < ApplicationController
  def index
    @animals = Animal.includes(:user)
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
      @user = User.find(params[:id])
      @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :catch_copy, :gender, :image, :anm_type).merge(user_id: current_user.id)
  end

end
