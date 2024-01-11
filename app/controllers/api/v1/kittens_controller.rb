class Api::V1::KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    render json: @kittens
  end

  def show
    @kitten = Kitten.find(params[:id])
    render json: @kitten
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      render json: @kitten
    else
      render json: { message: "Creating cat failed", errors: @kitten.errors }, status: 400
    end
  end

  def update
    @kitten = Kitten.find(params[:id])

    if @kitten.update(kitten_params)
      render json: @kitten
    else
      render json: { message: "Updating cat failed", errors: @kitten.errors }, status: 400
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    head :no_content
  end

  private

  def kitten_params
    params.permit(:name, :age, :cuteness, :softness)
  end
end
