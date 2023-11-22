class SkisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @skis = Ski.all
  end

  def show
    @ski = Ski.find(params[:id])
  end

  def new
    @ski = Ski.new
  end

  def create
    @ski = Ski.new(ski_params)
    @ski.user = current_user
    if @ski.save
      redirect_to skis_path
      # redirect_to ski_path(@ski)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ski_params
    params.require(:ski).permit(:brand, :experience_level, :size, :daily_price, :location)
  end
end
