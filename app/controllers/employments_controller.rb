class EmploymentsController < ApplicationController
   before_action :set_employment, only: [:show, :edit, :update, :destroy]

  # GET /nhansus
  # GET /nhansus.json
  def index
    @employments = Employment.all
  end

  # GET /nhansus/1
  # GET /nhansus/1.json
  def show
  end

  # GET /nhansus/new
  def new
    @employment = Employment.new
  end

  # GET /nhansus/1/edit
  def edit
  end

  # POST /nhansus
  # POST /nhansus.json
  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to employments_path, notice: 'Employment was successfully created.' }
        format.json { render :show, status: :created, location: @employment }
      else
        format.html { render :new }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nhansus/1
  # PATCH/PUT /nhansus/1.json
  def update
    respond_to do |format|
      if @employment.update(employment_params)
        format.html { redirect_to @employment, notice: 'Nhansu was successfully updated.' }
        format.json { render :show, status: :ok, location: @nhansu }
      else
        format.html { render :edit }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nhansus/1
  # DELETE /nhansus/1.json
  def destroy
    @employment.destroy
    respond_to do |format|
      format.html { redirect_to employments_url, notice: 'Employments was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_params
      params.require(:employment).permit(:hoten, :ngaysinh, :gioitinh, :tengoikhac, :sohieucongchuc, :cmnd, :ngaycapcmnd, :noicapcmnd, :tenxeptkb, :dantoc, :tongiao, :quoctich, :noisinh, :diachithuongtru, :noiohiennay, :dtcoquan, :dtnharieng, :dtdd, :email, :tinhtranghonnhan, :thanhphanxuatthan, :dienuutiengd, :dienuutienbanthan, :nangkieu, :suckhoe, :nhommau, :chieucao, :cannang, :khuyettan, :stk, :nganhangmotaikhoan, :ngaybatdaudongbhxh, :sobhxh, :ngayhopdong, :ngaytuyendung, :hethongtuyendung, :coquantuyendung, :congviecduocgiao, :ngayvecoquanhiennay, :thuocloaicanbo, :nhomcvhiennay, :dangnghibhxh, :ngayvaonganhgd, :chucvuhientai, :hesophucap, :department_id, :province_id, :district_id)
    end
end
