class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :edit, :update, :destroy]
  before_action :set_orderes, only: [:show, :edit, :update, :destroy]
  # GET /agreements
  def index
    @agreements_grid = initialize_grid(Agreement,
      include: [:orderer])
  end

  # GET /agreements/1
  def show
  end

  # GET /agreements/new
  def new
    @agreement = Agreement.new
  end

  # GET /agreements/1/edit
  def edit
  end

  # POST /agreements
  def create
    @agreement = Agreement.new(agreement_params)

    if @agreement.save
      redirect_to @agreement, notice: 'Agreement was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agreements/1
  def update
    if @agreement.update(agreement_params)
      redirect_to @agreement, notice: 'Agreement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agreements/1
  def destroy
    @agreement.destroy
    redirect_to agreements_url, notice: 'Agreement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement
      @agreement = Agreement.find(params[:id])
    end
  def set_orderers
    @ooderers = Orderer.all.pluck(:name,:id)
  end
    # Only allow a trusted parameter "white list" through.
    def agreement_params
      params.require(:agreement).permit(:name,:abbreviation,:code, :orderer_id,:constraction_date,:completion_date)
    end
end
