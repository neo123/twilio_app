class WelcomeController < ApplicationController
  def index

  end

  def voice
  	respond_to do |format|
      format.xml
    end
  end

  def voice_reply
    if params["client_id"]
      client_id = params["client_id"]
    else
      client_id = params["Digits"]
    end
    @client = Product.find_by_client_id(client_id)
  	
    respond_to do |format|
      format.xml
    end
  end

  def manage_service
    case params["Digits"]
    when "1"
      service_name = "Meal on wheels"
    when "2"
      service_name = "KFC"
    end
    @client = Product.find_by_client_id_and_service_name(params["client_id"], service_name)
    respond_to do |format|
      format.xml
    end
  end

  def place_order
    @client = Product.find_by_client_id_and_service_name(params["client_id"], params["service_name"])
    @client.update_attributes(:quantity => params["Digits"])
    respond_to do |format|
      format.xml
    end
  end

  def handle_wrong_input
    case params["Digits"]
    when "1"
      @success = "true"
    else
      @success = "false"
    end
    respond_to do |format|
      format.xml
    end
  end

  def user_authentication
    @product_user = Product.find_by_secrete_token(params["Digits"])
    respond_to do |format|
      format.xml
    end
  end

  def provide_info
    @product_user = Product.find_by_secrete_token(params["token"])
    case params["Digits"]
    when "1"
      @check = "account_status"
    else
      @success = "account_balance"
    end 
    respond_to do |format|
      format.xml
    end
  end

end
