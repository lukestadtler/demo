class RecSizesController < ApplicationController
  before_action :set_rec_size, only: [:show, :edit, :update, :destroy]

  # GET /rec_sizes
  # GET /rec_sizes.json
  def index
    @rec_sizes = RecSize.all
  end

  # GET /rec_sizes/1
  # GET /rec_sizes/1.json
  def show
  end

  # GET /rec_sizes/new
  def new
    @rec_size = RecSize.new
  end

  # GET /rec_sizes/1/edit
  def edit
  end

  # POST /rec_sizes
  # POST /rec_sizes.json
  def create
    @rec_size = RecSize.new(rec_size_params)

    respond_to do |format|
      if @rec_size.save
        format.html { redirect_to @rec_size, notice: 'Rec size was successfully created.' }
        format.json { render :show, status: :created, location: @rec_size }
      else
        format.html { render :new }
        format.json { render json: @rec_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rec_sizes/1
  # PATCH/PUT /rec_sizes/1.json
  def update
    respond_to do |format|
      if @rec_size.update(rec_size_params)
        format.html { redirect_to @rec_size, notice: 'Rec size was successfully updated.' }
        format.json { render :show, status: :ok, location: @rec_size }
      else
        format.html { render :edit }
        format.json { render json: @rec_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rec_sizes/1
  # DELETE /rec_sizes/1.json
  def destroy
    @rec_size.destroy
    respond_to do |format|
      format.html { redirect_to rec_sizes_url, notice: 'Rec size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rec_size
      @rec_size = RecSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rec_size_params
      params.fetch(:rec_size, {})
    end
end
