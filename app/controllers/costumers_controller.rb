class CostumersController < ApplicationController
  before_action :set_costumer, only: [:show, :edit, :update, :destroy]

  # GET /costumers
  # GET /costumers.json
  def index
    @costumers = Costumer.all
  end

  # GET /costumers/1
  # GET /costumers/1.json
  def show
  end

  # GET /costumers/new
  def new
    @costumer = Costumer.new
    @costumer.build_address
    @states = [ 'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 
                'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO' ]
  end

  # GET /costumers/1/edit
  def edit
    # @states = @costumer.address.state
  end

  # POST /costumers
  # POST /costumers.json
  def create
    @costumer = Costumer.new(costumer_params)

    respond_to do |format|
      if @costumer.save
        format.html { redirect_to @costumer, notice: 'Costumer was successfully created.' }
        format.json { render :show, status: :created, location: @costumer }
      else
        format.html { render :new }
        format.json { render json: @costumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costumers/1
  # PATCH/PUT /costumers/1.json
  def update
    respond_to do |format|
      if @costumer.update(costumer_params)
        format.html { redirect_to @costumer, notice: 'Costumer was successfully updated.' }
        format.json { render :show, status: :ok, location: @costumer }
      else
        format.html { render :edit }
        format.json { render json: @costumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costumers/1
  # DELETE /costumers/1.json
  def destroy
    @costumer.destroy
    respond_to do |format|
      format.html { redirect_to costumers_url, notice: 'Costumer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costumer
      @costumer = Costumer.find(params[:id])
      @states = @costumer.address.state
    end

    # Only allow a list of trusted parameters through.
    def costumer_params
      params.require(:costumer).permit(:name, :status, :rg, :cpf, :phone, 
                                       :mobile_phone, :date_of_birth,
                                        address_attributes: [
                                          :street,
                                          :district,
                                          :city,
                                          :number,
                                          :complement,
                                          :cep,
                                          :state
                                       ])
    end
end
