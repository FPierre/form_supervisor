class ValidationPatternsController < ApplicationController
  before_action :set_validation_pattern, only: [:show, :edit, :update, :destroy]

  # GET /validation_patterns
  def index
    @validation_patterns = ValidationPattern.all
  end

  # GET /validation_patterns/1
  def show
  end

  # GET /validation_patterns/new
  def new
    @validation_pattern = ValidationPattern.new
  end

  # GET /validation_patterns/1/edit
  def edit
  end

  # POST /validation_patterns
  def create
    @validation_pattern = ValidationPattern.new(validation_pattern_params)

    if @validation_pattern.save
      redirect_to @validation_pattern, notice: 'Validation pattern was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /validation_patterns/1
  def update
    if @validation_pattern.update(validation_pattern_params)
      redirect_to @validation_pattern, notice: 'Validation pattern was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /validation_patterns/1
  def destroy
    @validation_pattern.destroy
    redirect_to validation_patterns_url, notice: 'Validation pattern was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validation_pattern
      @validation_pattern = ValidationPattern.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def validation_pattern_params
      params.require(:validation_pattern).permit(:name)
    end
end
