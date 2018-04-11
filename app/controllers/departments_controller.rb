class DepartmentsController < ApplicationController
  def index
    @department = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.create(department_params)
    if @department.save
      flash[:success] = "Created"
      redirect_to departments_path
    else
      flash[:danger] = "Please try again"
      render :new
    end
  end
  
  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      flash[:success] = "Updated"
      redirect_to departments_path
    else
      flash[:danger] = "Fail"
      render :edit
    end
  end

  def destroy 
    @department = Department.find(params[:id])
    if @department.destroy
      flash[:success] = "Deleted"
      redirect_to departments_path
    end
  end



  private
  def department_params
    params.require(:department).permit(:name, :leader)
  end
end
