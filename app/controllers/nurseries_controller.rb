class NurseriesController < ApplicationController
    def index
        @nurseries = Nursery.all
    end
    #POST /nurseries
    def create
        @nurserie = Nursery.new(nurserie_params)
            if @nurserie.save
                redirect_to nurseries_path
            else
                render :new
            end
    end
    
    def delete
        @nurserie = Nursery.find(params[:id])
        @nurserie.destroy
        redirect_to nurseries_path
    end
    def edit
        @nurserie = Nursery.find(params[:id])
    end
    
    def update
        @nurserie = Nursery.find(params[:id])
            if @nurserie.update(nurserie_params)
                redirect_to nurseries_path
            else
                render :edit
            end
    end
    def new
        @nurserie = Nursery.new
        @producer = Producer.all
        @departmen = Departmet.all

    end    
    private
        def nurserie_params
            params.require(:nursery).permit(:nursery_code, :name, producer_id,  )
        end
end
