class SupliersController < ApplicationController
  def index
  	@supliers=Suplier.all
  end

  def new
  	@suplier=Suplier.new
  end
  def create
  	@suplier=Suplier.new(acount_params)
  	@suplier.save

  	redirect_to supliers_path
  end

  private
  def acount_params

  	params.require(:suplier).permit(:name)
  	
  end
end
