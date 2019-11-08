class SquealsController < ApplicationController
  before_action :set_squeal, only: [:show, :edit, :update, :destroy]

  # GET /squeals
  # GET /squeals.json
  def index
    @squeals = Squeal.all
  end

  # GET /squeals/1
  # GET /squeals/1.json
  def show
  end

  # GET /squeals/new
  def new
    @squeal = Squeal.new
  end

  # GET /squeals/1/edit
  def edit
  end

  # POST /squeals
  # POST /squeals.json
  def create
    @squeal = Squeal.new(squeal_params)

    respond_to do |format|
      if @squeal.save
        format.html { redirect_to @squeal, notice: 'Squeal was successfully created.' }
        format.json { render :show, status: :created, location: @squeal }
      else
        format.html { render :new }
        format.json { render json: @squeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squeals/1
  # PATCH/PUT /squeals/1.json
  def update
    respond_to do |format|
      if @squeal.update(squeal_params)
        format.html { redirect_to @squeal, notice: 'Squeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @squeal }
      else
        format.html { render :edit }
        format.json { render json: @squeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squeals/1
  # DELETE /squeals/1.json
  def destroy
    @squeal.destroy
    respond_to do |format|
      format.html { redirect_to squeals_url, notice: 'Squeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squeal
      @squeal = Squeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squeal_params
      params.require(:squeal).permit(:comment, :user_id)
    end
end
