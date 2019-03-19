class Api::OffplayersController < ApplicationController
  def index
    @offplayers = OffPlayer.all 
    render 'index.json.jbuilder'
  end
end
