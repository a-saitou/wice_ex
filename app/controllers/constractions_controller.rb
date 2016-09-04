class ConstractionsController < ApplicationController
  before_action :set_constraction, only: [:show, :edit, :update, :destroy]
  before_action :set_orderers, only: [:show, :edit, :update, :destroy]
  # GET /constractions
  def index
    @constractions_grid = initialize_grid(Constraction,
      include: [:orderer])
  end

  # GET /constractions/1
  def show

  end

  # GET /constractions/new
  def new

  end

  # GET /constractions/1/edit
  def edit

  end

  # POST /constractions
  def create
    @constraction = Constraction.new(constraction_params)
    @orderers=Orderer.all
    if @constraction.save
      redirect_to @constraction, notice: 'constraction was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /constractions/1
  def update
    if @constraction.update(constraction_params)
      redirect_to @constraction, notice: 'constraction was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /constractions/1
  def destroy
    @constraction.destroy
    redirect_to constractions_url, notice: 'constraction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constraction
      @constraction = Constraction.find(params[:id])
    end
  def set_orderers
    @orderers = Orderer.all.pluck(:name,:id)
  end
    # Only allow a trusted parameter "white list" through.
    def constraction_params
      params.require(:constraction).permit(:name,:abbreviation,:code, :kana,
        :orderer_id,:end_date,:start_date)
    end
end
