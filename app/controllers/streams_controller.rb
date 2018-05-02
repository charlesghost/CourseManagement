class StreamsController < ApplicationController

    def index

    @stream = Stream.all
    render :index

    end

    def new

        @stream = Stream.new # the html will have access to the blank employee

        render :new


    end

    def create 


        @stream = Stream.new(stream_params) # create a new employee but use the new params 

        if(@stream.save)
            redirect_to(streams_path) # redirect to the index page once created
        end
    
    end

    def edit 
        id = params[:id]
        @stream = Stream.find(id)

        render :edit
    end 

    def stream_params

        params.require(:stream).permit(:id, :stream_name, :start_date, :end_date) # grab the params and have access to the stuff

    end

    def update
		@streams = Stream.find(params[:id].to_i)
		if(@streams.present?)
			@streams.update(stream_params)
			redirect_to streams_url			
		end
	end

    def destroy
        
        @stream = Stream.find(params[:id].to_i)
        @stream.delete

        redirect_to streams_url, notice: 'Stream was successfully deleted'
    end 



end
