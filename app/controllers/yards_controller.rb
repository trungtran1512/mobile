class YardsController < ApplicationController
  before_action :set_yard, only: [:show, :edit, :update, :destroy]

  def index
    @yards = Yard.all
  end

  def show
  end

  def new
    @yard = Yard.new
  end

  def edit
  end

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

    def yard_params
      params.require(:yard).permit(:name, :area, :phone_number, :history, :status, :price)
    end
end
