class GuestsController < ApplicationController
  def create
    @party = Party.find(params[:party_id])
    @guest = Guest.new(guest_params)
    @guest.party = @party
    if @guest.save
      flash[:notice] = "Guest created!"
      redirect_to party_path(@party)
    else
      render "parties/show"
    end
  end

  protected
  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
  end
end