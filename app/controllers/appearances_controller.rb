class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      #changed to redirect to the appearance show page, for editing purposes
      redirect_to @appearance
    else
      binding.pry
      redirect_to new_appearance_path
    end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to appearance_path
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating, :user_id)
  end

end
