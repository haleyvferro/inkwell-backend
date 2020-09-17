class CharacterNotesController < ApplicationController
  before_action :set_character_note, only: [:show, :update, :destroy]

  # GET /character_notes
  def index
    @character_notes = CharacterNote.all

    render json: @character_notes
  end

  # GET /character_notes/1
  def show
    render json: @character_note
  end

  # POST /character_notes
  def create
    @character_note = CharacterNote.new(character_note_params)

    if @character_note.save
      render json: @character_note, status: :created, location: @character_note
    else
      render json: @character_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_notes/1
  def update
    if @character_note.update(character_note_params)
      render json: @character_note
    else
      render json: @character_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_notes/1
  def destroy
    @character_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_note
      @character_note = CharacterNote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_note_params
      params.require(:character_note).permit(:character_notebook_id, :title, :content, :visible_to_other_players, :amount_spent, :amount_earned)
    end
end
