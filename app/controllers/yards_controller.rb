class YardsController < ApplicationController
  before_action :set_yard, only: [:show, :edit, :update, :destroy]

  # GET /yards
  # GET /yards.json
  def index
    @yards = Yard.all
  end

  # GET /yards/1
  # GET /yards/1.json
  def show
  end

  # GET /yards/new
  def new
    @yard = Yard.new
  end

  # GET /yards/1/edit
  def edit
  end

  # POST /yards
  # POST /yards.json
  def create
    @yard = Yard.new(yard_params)

    respond_to do |format|
      if @yard.save
        format.html { redirect_to @yard, notice: 'Yard was successfully created.' }
        format.json { render :show, status: :created, location: @yard }
      else
        format.html { render :new }
        format.json { render json: @yard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yards/1
  # PATCH/PUT /yards/1.json
  def update
    respond_to do |format|
      if @yard.update(yard_params)
        format.html { redirect_to @yard, notice: 'Yard was successfully updated.' }
        format.json { render :show, status: :ok, location: @yard }
      else
        format.html { render :edit }
        format.json { render json: @yard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yards/1
  # DELETE /yards/1.json
  def destroy
    @yard.destroy
    respond_to do |format|
      format.html { redirect_to yards_url, notice: 'Yard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yard
      @yard = Yard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yard_params
      params.require(:yard).permit(:name, :area, :phone_number, :history, :status, :price)
    end
end
