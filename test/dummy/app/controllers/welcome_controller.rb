class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.xml
      format.json { render json: {} }
    end
  end
end
