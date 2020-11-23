class ProducersController < ApplicationController
  
  before_action :authenticate_user!
  
  #GET /producers/
  def index
    @producers = Producer.all
  end

  #GET /producers/:id
  def show
    @producers = Producer.find(params[:id])
  end

  #GET /producers/new
  def new
    @producers = Producer.new
  end

  #GET /producers/:id/edit
  def edit
    @producers = Producer.find(params[:id])
  end
  
  #POST /producers/
  def create
    @producers = Producer.new(producer_params)

    if @producers.save
      redirect_to @producers
    else
      render :new
    end    
  end

  #DELETE /producers/:id
  def destroy
    @producers = Producer.find(params[:id])
    @producers.destroy
    redirect_to producers_path
  end

  #PUT /producers/:id
  def update
    @producers = Producer.find(params[:id])
    if @producers.update(producer_params)
      redirect_to @producers
    else
      render :edit
    end
  end

  private
  
  def producer_params
    params.require(:producer).permit(:document_type,:document_number,:name,:lastname)
  end
end
