class DisciplinesController < ApplicationController

	def index
		#render plain: "This is the disciplines stuff"
		@disciplines = Discipline.all
		render :index
	end 

	def show
		@disciplines = Discipline.find(params[:id].to_i)
		render :show

	end

	def new 

		@disciplines = Discipline.new
		render :new

	end 

	def update
		@disciplines = Discipline.find(params[:id].to_i)
		if(@disciplines.present?)
			@disciplines.update(disciplines_params)
			redirect_to(disciplines_path)			
		end
	end


	def create
		@disciplines = Discipline.new(disciplines_params)
		if(@disciplines.save)
			redirect_to disciplines_path				
		end
		if @disciplines.stream.nil?
            redirect_to streams_path, notice: "You cannot create a discipline without a Stream !"
        end

	end 

	def edit 
		@disciplines = Discipline.find(params[:id].to_i)
		render :edit
	end

	def destroy
		@disciplines = Discipline.find(params[:id].to_i)
		if(@disciplines.present?)
			@disciplines.destroy
			redirect_to disciplines_path, notice: 'Discipline was successfully deleted'
		end

	end 


	def disciplines_params
		params.require(:discipline).permit(:discipline_name, :stream_id)
	end 
    
end
