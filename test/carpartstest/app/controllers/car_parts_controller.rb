class CarPartsController < ApplicationController
  before_action :set_car_part, only: [:show, :edit, :update, :destroy]

  # GET /car_parts
  # GET /car_parts.json
  def index
    @car_parts = CarPart.all
  end

  # GET /car_parts/1
  # GET /car_parts/1.json
  def show
  end

  # GET /car_parts/new
  def new
    @car_part = CarPart.new
  end

  # GET /car_parts/1/edit
  def edit
  end

  # POST /car_parts
  # POST /car_parts.json
  def create
    @car_part = CarPart.new(car_part_params)

    respond_to do |format|
      if @car_part.save
        format.html { redirect_to @car_part, notice: 'Car part was successfully created.' }
        format.json { render :show, status: :created, location: @car_part }
      else
        format.html { render :new }
        format.json { render json: @car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_parts/1
  # PATCH/PUT /car_parts/1.json
  def update
    respond_to do |format|
      if @car_part.update(car_part_params)
        format.html { redirect_to @car_part, notice: 'Car part was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_part }
      else
        format.html { render :edit }
        format.json { render json: @car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_parts/1
  # DELETE /car_parts/1.json
  def destroy
    @car_part.destroy
    respond_to do |format|
      format.html { redirect_to car_parts_url, notice: 'Car part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_part
      @car_part = CarPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_part_params
      params.require(:car_part).permit(:part, :car_id)
    end
end
