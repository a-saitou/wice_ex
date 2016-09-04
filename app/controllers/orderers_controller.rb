class OrderersController < ApplicationController
  before_action :set_orderer, only: [:show, :edit, :update, :destroy]

  # GET /orderers
  def index
    @orderers_grid = initialize_grid(Orderer)
  end

  # GET /orderers/1
  def show
  end

  # GET /orderers/new
  def new
    @orderer = Orderer.new
  end

  # GET /orderers/1/edit
  def edit
  end

  # POST /orderers
  def create
    @orderer = Orderer.new(orderer_params)

    if @orderer.save
      redirect_to @orderer, notice: 'Orderer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orderers/1
  def update
    if @orderer.update(orderer_params)
      redirect_to @orderer, notice: 'Orderer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orderers/1
  def destroy
    @orderer.destroy
    redirect_to orderers_url, notice: 'Orderer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderer
      @orderer = Orderer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orderer_params
      params.require(:orderer).permit(:name,:kana)
    end
end
