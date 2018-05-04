class KhoanphiphaithusController < ApplicationController
  before_action :set_khoanphiphaithu, only: [:show, :edit, :update, :destroy]

  # GET /khoanphiphaithus
  # GET /khoanphiphaithus.json
  def index
    @khoanphiphaithus = Khoanphiphaithu.all
  end

  # GET /khoanphiphaithus/1
  # GET /khoanphiphaithus/1.json
  def show
  end

  # GET /khoanphiphaithus/new
  def new
    @khoanphiphaithu = Khoanphiphaithu.new
  end

  # GET /khoanphiphaithus/1/edit
  def edit
  end

  # POST /khoanphiphaithus
  # POST /khoanphiphaithus.json
  def create
    @khoanphiphaithu = Khoanphiphaithu.new(khoanphiphaithu_params)

    respond_to do |format|
      if @khoanphiphaithu.save
        format.html { redirect_to @khoanphiphaithu, notice: 'Khoanphiphaithu was successfully created.' }
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
      if @khoanphiphaithu.update(khoanphiphaithu_params)
        format.html { redirect_to @khoanphiphaithu, notice: 'Khoanphiphaithu was successfully updated.' }
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
    @khoanphiphaithu.destroy
    respond_to do |format|
      format.html { redirect_to khoanphiphaithus_url, notice: 'Khoanphiphaithu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_khoanphiphaithu
      @khoanphiphaithu = Khoanphiphaithu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def khoanphiphaithu_params
      params.require(:khoanphiphaithu).permit(:tendichvu, :phidichvu, :loaidichvu, :kieudichvu, :hinhthuc, :lop_id)
    end
end
