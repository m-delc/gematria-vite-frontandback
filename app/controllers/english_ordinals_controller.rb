class EnglishOrdinalsController < ApplicationController
  before_action :set_english_ordinal, only: %i[ show update destroy ]

  # GET /english_ordinals
  def index
    @english_ordinals = EnglishOrdinal.all

    render json: @english_ordinals
  end

  # GET /english_ordinals/1
  def show
    render json: @english_ordinal
  end

  # POST /english_ordinals
  def create
    @english_ordinal = EnglishOrdinal.new(english_ordinal_params)

    if @english_ordinal.save
      render json: @english_ordinal, status: :created, location: @english_ordinal
    else
      render json: @english_ordinal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /english_ordinals/1
  def update
    if @english_ordinal.update(english_ordinal_params)
      render json: @english_ordinal
    else
      render json: @english_ordinal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /english_ordinals/1
  def destroy
    @english_ordinal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english_ordinal
      @english_ordinal = EnglishOrdinal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def english_ordinal_params
      params.fetch(:english_ordinal, {})
    end
end
