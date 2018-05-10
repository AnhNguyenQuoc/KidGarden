class TaisanlopsController < ApplicationController
  before_action :set_taisanlop, only: [:show, :edit, :update, :destroy]
   before_action :set_lop, only: [:show, :create, new, :edit, :update, :destroy]
  # GET /taisanlops
  # GET /taisanlops.json
  def index
    @lop = Lop.find(params[:lop_id])
  end

  # GET /taisanlops/1
  # GET /taisanlops/1.json
  def show
  end

  # GET /taisanlops/new
  def new
    @lop = Lop.find(params[:lop_id])
    @taisanlop = @lop.taisanlops.new
  end

  # GET /taisanlops/1/edit
  def edit
    @lop = Lop.find(params[:lop_id])
    @taisanlop = @lop.taisanlops.find(params[:id])
  end

  # POST /taisanlops
  # POST /taisanlops.json
  def create
    @taisanlop = @current_lop.taisanlops.build(taisanlop_params)

    respond_to do |format|
      if @taisanlop.save
        format.html { redirect_to lop_taisanlops_url, notice: 'Taisanlop was successfully created.' }
        format.json { render :show, status: :created, location: @taisanlop }
      else
        format.html { render :new }
        format.json { render json: @taisanlop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taisanlops/1
  # PATCH/PUT /taisanlops/1.json
  def update
    respond_to do |format|
      if @taisanlop.update_attributes(taisanlop_params)
        format.html { redirect_to lop_taisanlops_url, notice: 'Taisanlop was successfully updated.' }
        format.json { render :show, status: :ok, location: @taisanlop }
      else
        format.html { render :edit }
        format.json { render json: @taisanlop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taisanlops/1
  # DELETE /taisanlops/1.json
  def destroy
    @taisanlop.destroy
    respond_to do |format|
      format.html { redirect_to lop_taisanlops_url, notice: 'Taisanlop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taisanlop
      @taisanlop = Taisanlop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taisanlop_params
      params.require(:taisanlop).permit(:tentaisan, :donvitaisan, :nguontaisan, :soluong, :lop_id)
    end
end
