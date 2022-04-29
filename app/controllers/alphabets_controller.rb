class AlphabetsController < ApplicationController
  before_action :set_alphabet, only: %i[ show update destroy ]

  # GET /alphabets
  def index
    @alphabets = Alphabet.all

    render json: @alphabets, include: :values
  end

  # GET /alphabets/1
  def show
    render json: @alphabet
  end

  # POST /alphabets
  def create
    @alphabet = Alphabet.new(alphabet_params)

    if @alphabet.save
      render json: @alphabet, status: :created, location: @alphabet
    else
      render json: @alphabet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alphabets/1
  def update
    if @alphabet.update(alphabet_params)
      render json: @alphabet
    else
      render json: @alphabet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alphabets/1
  def destroy
    @alphabet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alphabet
      @alphabet = Alphabet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alphabet_params
      params.require(:alphabet).permit(:letter, :english_ordinal)
    end
end
