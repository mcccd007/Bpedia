  class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [ :edit, :update, :destroy]

  def index
        @bicycles = Bicycle.all
      end

  def similar
  @bicycle = Bicycle.find(params[:similar])
  end

  def show
    @bicycle = Bicycle.find(params[:id])
  end

  def new
    @bicycle = Bicycle.new
  end

  def edit
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)

    respond_to do |format|
        if (@bicycle.name == "Admin" || @bicycle.name == "weenus")
          format.html { redirect_to bicycles_similar_path  }
        end
      if @bicycle.save
        format.html { redirect_to @bicycle, notice: "#{@bicycle.name} was successfully created." }
        format.json { render :show, status: :created, location: @bicycle }
      else
        format.html { render :new }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bicycle.update(bicycle_params)
        format.html { redirect_to @bicycle, notice: "#{@bicycle.name} was successfully updated." }
        format.json { render :index, status: :ok, location: @bicycle }
      else
        format.html { render :edit }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bicycle.destroy
    respond_to do |format|
      format.html { redirect_to bicycles_url, notice: "#{@bicycle.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end

    def bicycle_params
      params.require(:bicycle).permit(:name, :model, :year, :make)
    end
end
