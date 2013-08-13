class TracksController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_if_admin, :only => [:destroy]

  def index
    @album = Album.find(params[:album_id])
    @tracks = Track.where("album_id=?",params[:album_id])
    render :index
  end

  def show
    @album = Album.find(params[:album_id])
    @track = Track.where("album_id=? AND id=?",params[:album_id],params[:id]).first
    @notes = @track.notes
    render :show
  end

  def new
    @album = Album.find(params[:album_id])
    @blank = Track.new
    @albums = Album.all
    render :new
  end

  def create
    @track = Track.new(params[:track])
    if @track.save
      redirect_to album_tracks_url(@track.album)
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:album_id])
    @track = Track.find(params[:id])
    @albums = Album.all
    p @track
    @blank = @track
    render :edit
  end

  def update
    @album = Album.find(params[:album_id])
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])
    redirect_to album_tracks_url(@album)
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_url
  end


end
