class WelcomeController < ApplicationController
  def index

  end

  def voice
  	respond_to do |format|
      format.xml
    end
  end

  def voice_reply
    case params["Digits"]
    when "1", "2", "3"
      @success = "true"
    else
      @success = "false"
    end
  	
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

  end

end
