class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

    def create
     Note.create(note_params)
   end
     private

    def note_params
      params.require(:note).permit(:content, :song_ids)
    end

end
