class GameMasterNotesController < ApplicationController
  before_action :set_game_master_note, only: [:show, :update, :destroy]

  # GET /game_master_notes
  def index
    @game_master_notes = GameMasterNote.all

    render json: @game_master_notes
  end

  # GET /game_master_notes/1
  def show
    render json: @game_master_note
  end

  # POST /game_master_notes
  def create
    @game_master_note = GameMasterNote.new(game_master_note_params)

    if @game_master_note.save
      render json: @game_master_note, status: :created, location: @game_master_note
    else
      render json: @game_master_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_master_notes/1
  def update
    if @game_master_note.update(game_master_note_params)
      render json: @game_master_note
    else
      render json: @game_master_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_master_notes/1
  def destroy
    @game_master_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_master_note
      @game_master_note = GameMasterNote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_master_note_params
      params.require(:game_master_note).permit(:gm_notebook_id, :title, :content, :visible_to_players)
    end
end
