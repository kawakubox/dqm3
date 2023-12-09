class MonsterGrowthsController < ApplicationController
  before_action :set_monster_growth, only: %i[ show edit update destroy ]

  # GET /monster_growths or /monster_growths.json
  def index
    @monster_growths = MonsterGrowth.all
  end

  # GET /monster_growths/1 or /monster_growths/1.json
  def show
  end

  # GET /monster_growths/new
  def new
    @monster_growth = MonsterGrowth.new
  end

  # GET /monster_growths/1/edit
  def edit
  end

  # POST /monster_growths or /monster_growths.json
  def create
    @monster_growth = MonsterGrowth.new(monster_growth_params)

    respond_to do |format|
      if @monster_growth.save
        format.html { redirect_to monster_growth_url(@monster_growth), notice: "Monster growth was successfully created." }
        format.json { render :show, status: :created, location: @monster_growth }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monster_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monster_growths/1 or /monster_growths/1.json
  def update
    respond_to do |format|
      if @monster_growth.update(monster_growth_params)
        format.html { redirect_to monster_growth_url(@monster_growth), notice: "Monster growth was successfully updated." }
        format.json { render :show, status: :ok, location: @monster_growth }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monster_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_growths/1 or /monster_growths/1.json
  def destroy
    @monster_growth.destroy!

    respond_to do |format|
      format.html { redirect_to monster_growths_url, notice: "Monster growth was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_growth
      @monster_growth = MonsterGrowth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monster_growth_params
      params.require(:monster_growth).permit(:monster_id, :level, :hp, :mp, :attack, :defence, :speed, :intelligence)
    end
end
