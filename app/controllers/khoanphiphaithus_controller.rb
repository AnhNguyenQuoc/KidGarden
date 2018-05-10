class KhoanphiphaithusController < ApplicationController
  before_action :set_khoanphiphaithu, only: [:show, :edit, :update, :destroy]
  before_action :set_lop, only: [:show, :create, new, :edit, :update, :destroy]
  # GET /khoanphiphaithus
  # GET /khoanphiphaithus.json
  def index
    @lop = Lop.find(params[:lop_id])
  end

  # GET /khoanphiphaithus/1
  # GET /khoanphiphaithus/1.json
  def show
  end

  # GET /khoanphiphaithus/new
  def new
    @lop = Lop.find(params[:lop_id])
    @khoanphiphaithu = @lop.khoanphiphaithus.new
  end
  # GET /khoanphiphaithus/1/edit

  def edit
    @lop = Lop.find(params[:lop_id])
    @khoanphiphaithu = @lop.khoanphiphaithus.find(params[:id])
  end

  # POST /khoanphiphaithus
  # POST /khoanphiphaithus.json
  def create
    @khoanphiphaithu = @current_lop.khoanphiphaithus.build(khoanphiphaithu_params)
    respond_to do |format|
      if @khoanphiphaithu.save
        format.html { redirect_to lop_khoanphiphaithus_url, notice: 'Khoanphiphaithu was successfully created.' }
        format.json { render :show, status: :created, location: @khoanphiphaithu }
      else
        format.html { render :new }
        format.json { render json: @khoanphiphaithu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khoanphiphaithus/1
  # PATCH/PUT /khoanphiphaithus/1.json
  def update
    respond_to do |format|
      if @khoanphiphaithu.update_attributes(khoanphiphaithu_params)
        format.html { redirect_to lop_khoanphiphaithus_url, notice: 'Khoanphiphaithu was successfully updated.' }
        format.json { render :show, status: :ok, location: @khoanphiphaithu }
      else
        format.html { render :edit }
        format.json { render json: @khoanphiphaithu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khoanphiphaithus/1
  # DELETE /khoanphiphaithus/1.json
  def destroy
    if @khoanphiphaithu.destroy
      respond_to do |format|
        format.html { redirect_to lop_khoanphiphaithus_url, notice: 'Khoanphiphaithu was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_khoanphiphaithu
      @lop = Lop.find(params[:lop_id])
      @khoanphiphaithu = Khoanphiphaithu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def khoanphiphaithu_params
      params.require(:khoanphiphaithu).permit(:tendichvu, :phidichvu, :loaidichvu, :kieudichvu, :hinhthuc, :lop_id)
    end
end
