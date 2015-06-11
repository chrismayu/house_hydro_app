class InComingsController < ApplicationController
  before_action :set_in_coming, only: [:show, :edit, :update, :destroy]

  # GET /in_comings
  # GET /in_comings.json
  def index
    @in_comings = InComing.all
  end

  # GET /in_comings/1
  # GET /in_comings/1.json
  def show
  end

  # GET /in_comings/new
  def new
    @in_coming = InComing.new
  end

  # GET /in_comings/1/edit
  def edit
  end

  # POST /in_comings
  # POST /in_comings.json
  def create
    @in_coming = InComing.new(in_coming_params)

    respond_to do |format|
      if @in_coming.save
        format.html { redirect_to @in_coming, notice: 'In coming was successfully created.' }
        format.json { render :show, status: :created, location: @in_coming }
      else
        format.html { render :new }
        format.json { render json: @in_coming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_comings/1
  # PATCH/PUT /in_comings/1.json
  def update
    respond_to do |format|
      if @in_coming.update(in_coming_params)
        format.html { redirect_to @in_coming, notice: 'In coming was successfully updated.' }
        format.json { render :show, status: :ok, location: @in_coming }
      else
        format.html { render :edit }
        format.json { render json: @in_coming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_comings/1
  # DELETE /in_comings/1.json
  def destroy
    @in_coming.destroy
    respond_to do |format|
      format.html { redirect_to in_comings_url, notice: 'In coming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_coming
      @in_coming = InComing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_coming_params
      params.require(:in_coming).permit(:house_id, :params, :update_reason, :house_unit_id, :ambient_temp, :temp, :ct1_realPower, :ct2_realPower, :ct3_realPower, :ct4_realPower, :ct1_Vrms, :time_stamp)
    end
end