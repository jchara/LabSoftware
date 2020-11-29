class ProducersController < ApplicationController
    def index
        @producers = Producer.all
    end
    #POST /producers
    def create
        @producer = Producer.new(producer_params)
            if @producer.save
                redirect_to producers_path
            else
                render :new
            end
    end
    
    def delete
        @producer = Producer.find(params[:id])
        @producer.destroy
        redirect_to producers_path
    end
    def edit
        @producer = Producer.find(params[:id])
    end
    
    def update
        @producer = Producer.find(params[:id])
            if @producer.update(producer_params)
                redirect_to producers_path
            else
                render :edit
            end
    end
    def new
        @producer = Producer.new
    end    
    private
        def producer_params
            params.require(:producer).permit(:name, :lastname, :document_number, :document_type )
        end
end
