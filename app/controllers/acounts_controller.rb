class AcountsController < ApplicationController
  def index
  	@acounts=Acount.all
  end

  def new
  	@acount=Acount.new
  end
  def create
  	@acount=Acount.new(acount_params)
  	@acount.save

  	redirect_to acounts_path
  end

  private
  def acount_params

  	params.require(:acount).permit(:acount_number,:suplier_id)
  	
  end
end
