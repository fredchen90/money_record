class RecordsController < ApplicationController

	before_action :authenticate_user!

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

	def edit
		@record = Record.find(params[:id])
	end

	def update
		@record = Record.find(params[:id])
		if @record.update(record_params)
			redirect_to records_path
		else
			render :edit
		end
	end

	def destroy
		@record = Record.find(params[:id])
		@record.destroy
		redirect_to records_path
	end

	private

	def record_params
		params.require(:record).permit(:description, :price)
	end

end
