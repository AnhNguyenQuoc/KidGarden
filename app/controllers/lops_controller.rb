class LopsController < ApplicationController
  before_action :set_lop, only: [:show, :edit, :update, :destroy]

  # GET /lops
  # GET /lops.json
  def index
    @lops = Lop.all
  end

  # GET /lops/1
  # GET /lops/1.json
  def show
  end

  # GET /lops/new
  def new
    @lop = Lop.new
    2.times { @lop.phanconggiangdays.build }
  end

  # GET /lops/1/edit
  def edit
  end

  # POST /lops
  # POST /lops.json
  def create
    @lop = Lop.new(lop_params)
    respond_to do |format|
      if @lop.save
        format.html { redirect_to @lop, notice: 'Lop was successfully created.' }
        format.json { render :show, status: :created, location: @lop }
      else
        format.html { render :new }
        format.json { render json: @lop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lops/1
  # PATCH/PUT /lops/1.json
  def update
    respond_to do |format|
      if @lop.update(lop_params)
        format.html { redirect_to @lop, notice: 'Lop was successfully updated.' }
        format.json { render :show, status: :ok, location: @lop }
      else
        format.html { render :edit }
        format.json { render json: @lop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lops/1
  # DELETE /lops/1.json
  def destroy
    @lop.destroy
    respond_to do |format|
      format.html { redirect_to lops_url, notice: 'Lop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lop
      @lop = Lop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lop_params
      params.require(:lop).permit(:khoihoc, :lophoc, :syso, :department_id, :namhoc, phanconggiangdays_attributes: [:id, :employment_id])
    end
end
