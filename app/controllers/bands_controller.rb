class BandsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_if_admin, :only => [:destroy]

  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    @albums = Album.where("band_id=?", params[:id])
    render :show
  end

  def new
    @blank = Band.new
    render :new
  end

  def create
    @band = Band.new(params[:band])
    if @band.save
      redirect_to bands_url
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
    @blank = @band
    render :edit
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])
    redirect_to bands_url
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_url
  end
end
