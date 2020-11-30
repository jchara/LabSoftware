class NurseriesController < ApplicationController
    def index
        @nurseries = Nurserie.all
    end
    #POST /nurseries
    def create
        @nurserie = nurserie.new(nurserie_params)
            if @nurserie.save
                redirect_to nurseries_path
            else
                render :new
            end
    end
    
    def delete
        @nurserie = nurserie.find(params[:id])
        @nurserie.destroy
        redirect_to nurseries_path
    end
    def edit
        @nurserie = nurserie.find(params[:id])
    end
    
    def update
        @nurserie = nurserie.find(params[:id])
            if @nurserie.update(nurserie_params)
                redirect_to nurseries_path
            else
                render :edit
            end
    end
    def new
        @nurserie = nurserie.new
    end    
    private
        def nurserie_params
            params.require(:nurserie).permit(:nursery_code, :name)
        end
end
