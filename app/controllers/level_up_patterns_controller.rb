class LevelUpPatternsController < ApplicationController
  before_action :set_level_up_pattern, only: %i[ show edit update destroy ]

  # GET /level_up_patterns or /level_up_patterns.json
  def index
    @level_up_patterns = LevelUpPattern.all
  end

  # GET /level_up_patterns/1 or /level_up_patterns/1.json
  def show
  end

  # GET /level_up_patterns/new
  def new
    @level_up_pattern = LevelUpPattern.new
  end

  # GET /level_up_patterns/1/edit
  def edit
  end

  # POST /level_up_patterns or /level_up_patterns.json
  def create
    @level_up_pattern = LevelUpPattern.new(level_up_pattern_params)

    respond_to do |format|
      if @level_up_pattern.save
        format.html { redirect_to level_up_pattern_url(@level_up_pattern), notice: "Level up pattern was successfully created." }
        format.json { render :show, status: :created, location: @level_up_pattern }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @level_up_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level_up_patterns/1 or /level_up_patterns/1.json
  def update
    respond_to do |format|
      if @level_up_pattern.update(level_up_pattern_params)
        format.html { redirect_to level_up_pattern_url(@level_up_pattern), notice: "Level up pattern was successfully updated." }
        format.json { render :show, status: :ok, location: @level_up_pattern }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @level_up_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_up_patterns/1 or /level_up_patterns/1.json
  def destroy
    @level_up_pattern.destroy!

    respond_to do |format|
      format.html { redirect_to level_up_patterns_url, notice: "Level up pattern was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_up_pattern
      @level_up_pattern = LevelUpPattern.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def level_up_pattern_params
      params.require(:level_up_pattern).permit(:lineage, :name)
    end
end
