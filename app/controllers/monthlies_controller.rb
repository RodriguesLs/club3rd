class MonthliesController < ApplicationController
  before_action :set_monthly, only: %i[show edit update destroy]

  # GET /monthlies
  # GET /monthlies.json
  def index
    @monthlies = Monthly.all
  end

  # GET /monthlies/1
  # GET /monthlies/1.json
  def show; end

  # GET /monthlies/new
  def new
    @monthly = Monthly.new
  end

  # GET /monthlies/1/edit
  def edit; end

  # POST /monthlies
  # POST /monthlies.json
  def create
    @monthly = Monthly.new(monthly_params)

    respond_to do |format|
      if @monthly.save
        format.html { redirect_to @monthly, notice: 'Monthly was successfully created.' }
        format.json { render :show, status: :created, location: @monthly }
      else
        format.html { render :new }
        format.json { render json: @monthly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthlies/1
  # PATCH/PUT /monthlies/1.json
  def update
    respond_to do |format|
      if @monthly.update(monthly_params)
        format.html { redirect_to @monthly, notice: 'Monthly was successfully updated.' }
        format.json { render :show, status: :ok, location: @monthly }
      else
        format.html { render :edit }
        format.json { render json: @monthly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthlies/1
  # DELETE /monthlies/1.json
  def destroy
    @monthly.destroy
    respond_to do |format|
      format.html { redirect_to monthlies_url, notice: 'Monthly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  private

  def set_monthly
    @monthly = Monthly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def monthly_params
    params.require(:monthly).permit(:status, :price, :date, :costumer_id)
  end
end
