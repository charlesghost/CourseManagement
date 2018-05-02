class CohortsController < ApplicationController
    def index 
        @cohort = Cohort.all
        render :index
    end

    def new
        @cohort = Cohort.new
        require 'rubygems'
        require 'httparty'
        require 'json'

    
    
        response = HTTParty.get("https://hello.localtunnel.me/users/json")
        jobj = response.body
        
        listN = [] 
        json_object = JSON.parse(jobj)

        # json_object.each do |hash|
        #     string = "#{hash['f_name']} #{hash['l_name']}"
        #     listN << string
        # end

        @example = json_object 
        

        render :new
    end

    def create 
        @cohort = Cohort.new(cohort_params)
        if(@cohort.save)
            redirect_to(cohorts_path)
        end
        if @cohort.discipline.nil?
            redirect_to streams_path, notice: "You cannot create a cohort without a Discipline !"
        end
    end

    def cohort_params
        params.require(:cohort).permit(:cohort_name, :discipline_id)
    end

    def update
        @cohort = Cohort.find(params[:id].to_i)
        @cohort.update(cohort_params)
        redirect_to(cohorts_path)
    end

    def edit 
        @cohort = Cohort.find(params[:id].to_i)
        require 'rubygems'
        require 'httparty'
        require 'json'

    
    
        response = HTTParty.get("https://hello.localtunnel.me/users/json")
        jobj = response.body
        
        listJ = [] 
        json_object = JSON.parse(jobj)

        @example = json_object 
        render :edit
    end

    def destroy
        @cohort = Cohort.find(params[:id].to_i)
        @cohort.destroy
        redirect_to cohorts_path,  notice: 'Cohort was successfully deleted'
    end

    def show
        @cohort = Cohort.find(params[:id].to_i)
        render :show
    end
end
