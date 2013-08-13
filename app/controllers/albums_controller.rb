class AlbumsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_if_admin, :only => [:destroy]

  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @bands = Band.all
    @blank = Album.new
    render :new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to albums_url
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    @blank = @album
    @bands = Band.all
    render :edit
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to albums_url
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_url
  end
end
