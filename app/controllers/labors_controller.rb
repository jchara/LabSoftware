class LaborsController < ApplicationController
    def index
        @labors = Labor.all
        @nurseries = Nursery.all
    end
    #POST /labors
    def create
        @labor = Labor.new(labor_params)
            if @labor.save
                redirect_to labors_path
            else
                render :new
            end
    end
    
    def delete
        @labor = Labor.find(params[:id])
        @labor.destroy
        redirect_to labors_path
    end
    def edit
        @labor = Labor.find(params[:id])
    end
    
    def update
        @labor = Labor.find(params[:id])
            if @labor.update(labor_params)
                redirect_to labors_path
            else
                render :edit
            end
    end
    def new
        @control_products = ControlProduct.all
        @labor = Labor.new
    end    
    private
        def labor_params
            params.require(:labor).permit(:date, :description, :labor_type, :Control_product_id )
        end
end
