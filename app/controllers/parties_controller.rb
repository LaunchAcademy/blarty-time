class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      flash[:notice] = "Awesomesauce! Party created."
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @party = Party.find(params[:id])
    # @guest = @party.guests.new
  end

  protected
  def party_params
    params.require(:party).permit(:name, :location, :description)
  end
end