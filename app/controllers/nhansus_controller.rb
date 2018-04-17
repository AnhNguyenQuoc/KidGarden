class NhansusController < ApplicationController
  before_action :set_nhansu, only: [:show, :edit, :update, :destroy]

  # GET /nhansus
  # GET /nhansus.json
  def index
    @nhansus = Nhansu.all
  end

  # GET /nhansus/1
  # GET /nhansus/1.json
  def show
  end

  # GET /nhansus/new
  def new
    @nhansu = Nhansu.new
  end

  # GET /nhansus/1/edit
  def edit
  end

  # POST /nhansus
  # POST /nhansus.json
  def create
    @nhansu = Nhansu.new(nhansu_params)

    respond_to do |format|
      if @nhansu.save
        format.html { redirect_to @nhansu, notice: 'Nhansu was successfully created.' }
        format.json { render :show, status: :created, location: @nhansu }
      else
        format.html { render :new }
        format.json { render json: @nhansu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nhansus/1
  # PATCH/PUT /nhansus/1.json
  def update
    respond_to do |format|
      if @nhansu.update(nhansu_params)
        format.html { redirect_to @nhansu, notice: 'Nhansu was successfully updated.' }
        format.json { render :show, status: :ok, location: @nhansu }
      else
        format.html { render :edit }
        format.json { render json: @nhansu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nhansus/1
  # DELETE /nhansus/1.json
  def destroy
    @nhansu.destroy
    respond_to do |format|
      format.html { redirect_to nhansus_url, notice: 'Nhansu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nhansu
      @nhansu = Nhansu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nhansu_params
      params.require(:nhansu).permit(:hoten, :ngaysinh, :gioitinh, :tengoikhac, :sohieucongchuc, :cmnd, :ngaycapcmnd, :noicapcmnd, :tenxeptkb, :dantoc, :tongiao, :quoctich, :noisinh, :diachithuongtru, :noiohiennay, :dtcoquan, :dtnharieng, :dtdd, :email, :tinhtranghonnhan, :thanhphanxuatthan, :dienuutiengd, :dienuutienbanthan, :nangkieu, :suckhoe, :nhommau, :chieucao, :cannang, :khuyettan, :stk, :nganhangmotaikhoan, :ngaybatdaudongbhxh, :sobhxh, :ngayhopdong, :ngaytuyendung, :hethongtuyendung, :coquantuyendung, :congviecduocgiao, :ngayvecoquanhiennay, :thuocloaicanbo, :nhomcvhiennay, :dangnghibhxh, :ngayvaonganhgd, :chucvuhientai, :hesophucap)
    end
end
