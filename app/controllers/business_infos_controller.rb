class BusinessInfosController < ApplicationController
  before_action :set_business_info, only: [:show, :edit, :update]

  # GET /business_infos/1
  # GET /business_infos/1.json
  def show
  end

  # GET /business_infos/1/edit
  def edit
  end


  # PATCH/PUT /business_infos/1
  # PATCH/PUT /business_infos/1.json
  def update
    respond_to do |format|
      if @business_info.update!(business_info_params)
        format.html { redirect_to merchant_applications_path, notice: 'Business info was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_info }
      else
        format.html { render :edit }
        format.json { render json: @business_info.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def merchant_application
      @merchant_application ||= MerchantApplication.find(params[:merchant_application_id])
    end

    def set_business_info
      @business_info = merchant_application.business_info
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_info_params
      params.require(:business_info).permit(:merchant_application_id, :business_info, :business_name, :legal_name, :email, :website, :contact_name, :contact_phone, :contact_fax, :contact_email, :customer_service_email, :retreival_request_to_business_address, :retreival_request_fax_number, :mcc_id, :billing_address_attributes => [:id, :street1, :street2, :city, :state, :zip], :location_address_attributes  => [:id, :street1, :street2, :city, :state, :zip])
    end
end
