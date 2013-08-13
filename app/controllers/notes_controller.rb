class NotesController < ApplicationController

  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to album_track_url(@note.track.album, @note.track)
    else
      render "tracks/show"
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @track = @note.track
    @notes = @track.notes
    p '========================'
    p current_user
    p @note.author
    p '========================'
    if current_user == @note.author
      @note.destroy
      redirect_to album_track_url(@track.album,@track)
    else
      redirect_to album_track_url(@track.album,@track)
    end
  end
end
