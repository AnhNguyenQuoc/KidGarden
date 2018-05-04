class PhanconggiangdaysController < ApplicationController
  before_action :set_phanconggiangday, only: [:show, :edit, :update, :destroy]

  # GET /phanconggiangdays
  # GET /phanconggiangdays.json
  def index
    @phanconggiangdays = Phanconggiangday.all
  end

  # GET /phanconggiangdays/1
  # GET /phanconggiangdays/1.json
  def show
  end

  # GET /phanconggiangdays/new
  def new
    @phanconggiangday = Phanconggiangday.new
  end

  # GET /phanconggiangdays/1/edit
  def edit
  end

  # POST /phanconggiangdays
  # POST /phanconggiangdays.json
  def create
    @phanconggiangday = Phanconggiangday.new(phanconggiangday_params)

    respond_to do |format|
      if @phanconggiangday.save
        format.html { redirect_to @phanconggiangday, notice: 'Phanconggiangday was successfully created.' }
        format.json { render :show, status: :created, location: @phanconggiangday }
      else
        format.html { render :new }
        format.json { render json: @phanconggiangday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phanconggiangdays/1
  # PATCH/PUT /phanconggiangdays/1.json
  def update
    respond_to do |format|
      if @phanconggiangday.update(phanconggiangday_params)
        format.html { redirect_to @phanconggiangday, notice: 'Phanconggiangday was successfully updated.' }
        format.json { render :show, status: :ok, location: @phanconggiangday }
      else
        format.html { render :edit }
        format.json { render json: @phanconggiangday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phanconggiangdays/1
  # DELETE /phanconggiangdays/1.json
  def destroy
    @phanconggiangday.destroy
    respond_to do |format|
      format.html { redirect_to phanconggiangdays_url, notice: 'Phanconggiangday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phanconggiangday
      @phanconggiangday = Phanconggiangday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phanconggiangday_params
      params.require(:phanconggiangday).permit(:lop_id, :employment_id)
    end
end
