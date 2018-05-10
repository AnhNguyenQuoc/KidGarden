class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception




  private

    def set_lop
      @current_lop = Lop.find(params[:lop_id])
    end

end
