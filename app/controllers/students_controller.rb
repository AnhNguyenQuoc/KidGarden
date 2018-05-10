class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_lop, only: [:show, :create, new, :edit, :update, :destroy]
  # GET /students
  # GET /students.json
  def index
    @lop = Lop.find(params[:lop_id])
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @lop = Lop.find(params[:lop_id])
    @student = @lop.students.new
  end

  # GET /students/1/edit
  def edit
    @lop = Lop.find(params[:lop_id])
    @student = @lop.students.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = @current_lop.students.build(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to lop_students_url, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to lop_students_url, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = @current_lop.students.find(params[:id])
    if @student.destroy
      respond_to do |format|
        format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:hoten, :ngaysinh, :gioitinh, :choohientai, :hokhauthuongtru, :noisinh, :quequan, :dantoc, :dienchinhsach, :canngheo, :tencha, :nghenghiepcha, :dienthoaibo, :tenme, :nghenghiepme, :dienthoaime)
    end
end
