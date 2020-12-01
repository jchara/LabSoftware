class ControlProductsController < ApplicationController
    def index
        @control_products = ControlProduct.all
    end
    #POST /producers
    def create
        @control_product = ControlProduct.new(control_product_params)
            if @control_product.save
                redirect_to control_products_path
            else
                render :new
            end
    end
    
    def delete
        @control_product = ControlProduct.find(params[:id])
        @control_product.destroy
        redirect_to control_products_path
    end
    def edit
        @control_product = ControlProduct.find(params[:id])
    end
    
    def update
        @control_product = ControlProduct.find(params[:id])
            if @control_product.update(control_product_params)
                redirect_to control_products_path
            else
                render :edit
            end
    end
    def new
        @control_product = ControlProduct.new
    end    
    private
        def control_product_params
            params.require(:control_product).permit(:ica_registration, :name, :application_frequency, :price_product )
        end
end
