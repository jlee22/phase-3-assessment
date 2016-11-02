class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
      @pet = Pet.find(params[:id])
      @toys = @pet.toys
    if request.xhr?
      render json: @toys
    end
  end

end
