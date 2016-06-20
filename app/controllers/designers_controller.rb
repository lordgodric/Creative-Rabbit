class DesignersController < ApplicationController
	def index
	end

	def show
		@designer = Designer.find(params[:id])
	end
end
