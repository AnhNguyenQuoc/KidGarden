class AdminsController < ApplicationController
  def index
    @employments = Employment.all
  end
end
