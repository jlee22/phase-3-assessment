class ToysController < ApplicationController

  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys
    render json: @toys
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @pet = Pet.find(params[:pet_id])
    @toy.pet = @pet
    if @toy.save
      redirect_to pet_toy_path(@pet, @toy)
    else
      @errors = @toy.errors.full_messages
      render 'new'
    end
  end


  private

  def toy_params
    params.require(:toy).permit(:description)
  end

end
