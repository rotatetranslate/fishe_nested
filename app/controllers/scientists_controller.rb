class ScientistsController < ApplicationController

  def index
    @scientists = Scientist.all
  end

  def show
    @scientist = Scientist.find(params[:id])
    @experiments = @scientists.experiments
  end

  def new
    @scientist = Scientist.new
  end

  def edit
    @scientist = Scientist.find(params[:id])
  end

end
