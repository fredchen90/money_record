class RecordsController < ApplicationController

	def index
		@records = Record.all
	end

	def new
		@record = Record.new
	end

	def create
		@record = Record.new(record_params)
		if @record.save
			redirect_to records_path
		else
			render :new
		end

	end

	private

	def record_params
		params.require(:record).permit(:description, :price)
	end

end
