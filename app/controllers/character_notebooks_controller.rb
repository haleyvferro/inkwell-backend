class CharacterNotebooksController < ApplicationController
  before_action :set_character_notebook, only: [:show, :update, :destroy]

  # GET /character_notebooks
  def index
    @character_notebooks = CharacterNotebook.all

    render json: @character_notebooks
  end

  # GET /character_notebooks/1
  def show
    render json: @character_notebook
  end

  # POST /character_notebooks
  def create
    @character_notebook = CharacterNotebook.new(character_notebook_params)

    if @character_notebook.save
      render json: @character_notebook, status: :created, location: @character_notebook
    else
      render json: @character_notebook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_notebooks/1
  def update
    if @character_notebook.update(character_notebook_params)
      render json: @character_notebook
    else
      render json: @character_notebook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_notebooks/1
  def destroy
    @character_notebook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_notebook
      @character_notebook = CharacterNotebook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_notebook_params
      params.require(:character_notebook).permit(:user_id, :game_id, :name, :amount_total_earned, :amount_existing, :amount_total_spent)
    end
end
