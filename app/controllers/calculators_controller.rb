class CalculatorsController < ApplicationController
  before_action :set_calculator, only: [:show, :edit, :update, :destroy]

  # GET /calculators
  def index
    @calculators = Calculator.all
  end

  # GET /calculators/1
  def show
  end

  # GET /calculators/new
  def new
    @calculator = Calculator.new
  end

  # GET /calculators/1/edit
  def edit
  end

  # POST /calculators
  def create
    @calculator = Calculator.new(calculator_params)

    if @calculator.save
      redirect_to @calculator, notice: 'Calculator was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /calculators/1
  def update
    if @calculator.update(calculator_params)
      redirect_to @calculator, notice: 'Calculator was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /calculators/1
  def destroy
    @calculator.destroy
    redirect_to calculators_url, notice: 'Calculator was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculator
      @calculator = Calculator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calculator_params
      params.require(:calculator).permit(:title)
    end
end
