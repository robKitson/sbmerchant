class OwnerInfosController < ApplicationController
  before_action :set_owner_info, only: [:show, :edit, :update, :destroy]

  # GET /owner_infos
  # GET /owner_infos.json
  def index
    @owner_infos = OwnerInfo.all
  end

  # GET /owner_infos/1
  # GET /owner_infos/1.json
  def show
  end

  # GET /owner_infos/new
  def new
    @owner_info = OwnerInfo.new
  end

  # GET /owner_infos/1/edit
  def edit
  end

  # POST /owner_infos
  # POST /owner_infos.json
  def create
    @owner_info = OwnerInfo.new(owner_info_params)

    respond_to do |format|
      if @owner_info.save
        format.html { redirect_to @owner_info, notice: 'Owner info was successfully created.' }
        format.json { render :show, status: :created, location: @owner_info }
      else
        format.html { render :new }
        format.json { render json: @owner_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_infos/1
  # PATCH/PUT /owner_infos/1.json
  def update
    respond_to do |format|
      if @owner_info.update(owner_info_params)
        format.html { redirect_to @owner_info, notice: 'Owner info was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_info }
      else
        format.html { render :edit }
        format.json { render json: @owner_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_infos/1
  # DELETE /owner_infos/1.json
  def destroy
    @owner_info.destroy
    respond_to do |format|
      format.html { redirect_to owner_infos_url, notice: 'Owner info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_info
      @owner_info = OwnerInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_info_params
      params.require(:owner_info).permit(:name, :ownership_percent, :date_of_birth, :ssn, :email_address, :home_address_id)
    end
end
