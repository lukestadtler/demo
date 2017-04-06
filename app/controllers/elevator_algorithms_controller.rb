class ElevatorAlgorithmsController < ApplicationController
  before_action :set_elevator_algorithm, only: [:show, :edit, :update, :destroy]

  # GET /elevator_algorithms
  # GET /elevator_algorithms.json
  def index
    @elevator_algorithms = ElevatorAlgorithm.all
  end

  # GET /elevator_algorithms/1
  # GET /elevator_algorithms/1.json
  def show
  end

  # GET /elevator_algorithms/new
  def new
    @elevator_algorithm = ElevatorAlgorithm.new
  end

  # GET /elevator_algorithms/1/edit
  def edit
  end

  # POST /elevator_algorithms
  # POST /elevator_algorithms.json
  def create
    @elevator_algorithm = ElevatorAlgorithm.new(elevator_algorithm_params)

    respond_to do |format|
      if @elevator_algorithm.save
        format.html { redirect_to @elevator_algorithm, notice: 'Elevator algorithm was successfully created.' }
        format.json { render :show, status: :created, location: @elevator_algorithm }
      else
        format.html { render :new }
        format.json { render json: @elevator_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elevator_algorithms/1
  # PATCH/PUT /elevator_algorithms/1.json
  def update
    respond_to do |format|
      if @elevator_algorithm.update(elevator_algorithm_params)
        format.html { redirect_to @elevator_algorithm, notice: 'Elevator algorithm was successfully updated.' }
        format.json { render :show, status: :ok, location: @elevator_algorithm }
      else
        format.html { render :edit }
        format.json { render json: @elevator_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elevator_algorithms/1
  # DELETE /elevator_algorithms/1.json
  def destroy
    @elevator_algorithm.destroy
    respond_to do |format|
      format.html { redirect_to elevator_algorithms_url, notice: 'Elevator algorithm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elevator_algorithm
      @elevator_algorithm = ElevatorAlgorithm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elevator_algorithm_params
      params.fetch(:elevator_algorithm, {})
    end
end
