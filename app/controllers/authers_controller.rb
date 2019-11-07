class AuthersController < ApplicationController
	def index
		@authers =Auther.all 
	end
	def new

		@auther= Auther.new
	end
	def create
		@auther= Auther.new(auther_params)
		@auther.save
		redirect_to authers_path
	end

	private

	def auther_params
		params.require(:auther).permit(:name)
		
	end
end
