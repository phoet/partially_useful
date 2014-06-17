class WelcomeController < ApplicationController
  respond_to :html, :json, :xml

  def index
    respond_with({})
  end
end
