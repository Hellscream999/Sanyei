class HandymenController < ApplicationController
  before_action :set_handyman, only: [:show, :edit, :update, :destroy]

  # GET /handymen
  # GET /handymen.json
  def index
    @handymen = Handyman.all
  end

  # GET /handymen/1
  # GET /handymen/1.json
  def show
  end

  # GET /handymen/new
  def new
    @handyman = Handyman.new
  end

  # GET /handymen/1/edit
  def edit
  end

  # POST /handymen
  # POST /handymen.json
  def create
    @handyman = Handyman.new(handyman_params)

    respond_to do |format|
      if @handyman.save
        format.html { redirect_to @handyman, notice: 'Handyman was successfully created.' }
        format.json { render :show, status: :created, location: @handyman }
      else
        format.html { render :new }
        format.json { render json: @handyman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handymen/1
  # PATCH/PUT /handymen/1.json
  def update
    respond_to do |format|
      if @handyman.update(handyman_params)
        format.html { redirect_to @handyman, notice: 'Handyman was successfully updated.' }
        format.json { render :show, status: :ok, location: @handyman }
      else
        format.html { render :edit }
        format.json { render json: @handyman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handymen/1
  # DELETE /handymen/1.json
  def destroy
    @handyman.destroy
    respond_to do |format|
      format.html { redirect_to handymen_url, notice: 'Handyman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handyman
      @handyman = Handyman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handyman_params
      params.fetch(:handyman, {})
    end
end
