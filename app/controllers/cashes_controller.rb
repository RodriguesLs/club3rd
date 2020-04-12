class CashesController < ApplicationController
  layout 'default'
  
  before_action :set_cash, only: [:show, :edit, :update, :destroy, :undo]

  # GET /cashes
  # GET /cashes.json
  def index
    @cashes = Cash.where("status = ?", false)
    @totalization = 0
    @cashes.each do |c| 
      @totalization += c.price
    end
  end

  # GET /cashes/1
  # GET /cashes/1.json
  def show; end

  # GET /cashes/new
  def new
    @cash = Cash.new
  end

  def undo
    @cash.status = true
    @cash.save
    redirect_to cashes_path, notice: 'Operação desfeita com sucesso.'
  end

  # GET /cashes/1/edit
  def edit; end

  # POST /cashes
  # POST /cashes.json
  def create
    @cash = Cash.new(cash_params)
    @cash.status = false
    respond_to do |format|
      if @cash.save
        format.html { redirect_to cashes_path, notice: 'Registro efetuado com sucesso.' }
        format.json { render :show, status: :created, location: @cash }
      else
        format.html { render :new }
        format.json { render json: @cash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashes/1
  # PATCH/PUT /cashes/1.json
  def update
    respond_to do |format|
      if @cash.update(cash_params)
        format.html { redirect_to @cash, notice: 'Cash was successfully updated.' }
        format.json { render :show, status: :ok, location: @cash }
      else
        format.html { render :edit }
        format.json { render json: @cash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashes/1
  # DELETE /cashes/1.json
  def destroy
    @cash.destroy
    respond_to do |format|
      format.html { redirect_to cashes_url, notice: 'Cash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash
      @cash = Cash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cash_params
      params.require(:cash).permit(:price, :date, :kind, :note)
    end
end
