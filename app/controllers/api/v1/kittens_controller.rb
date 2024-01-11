class Api::V1::KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    render json: @kittens
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
