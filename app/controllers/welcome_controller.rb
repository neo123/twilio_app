class WelcomeController < ApplicationController
  def index

  end

  def voice
  	respond_to do |format|
      format.xml
    end
  end

  def voice_reply
  	respond_to do |format|
      format.xml
    end
  end
end
