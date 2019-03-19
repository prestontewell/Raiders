class Api::OffplayersController < ApplicationController
  def index
    @offplayers = OffPlayer.all 
    render 'index.json.jbuilder'
  end

  def create
    @offplayer = OffPlayer.new(
      name: params[:name],
      number: params[:number], 
      position: params[:position]
      )
    @offplayer.save
    render 'show.json.jbuilder'
  end

  def update
    @offplayer = OffPlayer.find(params[:id])
    @offplayer.name = params[:name] || @offplayer.name
    @offplayer.number = params[:number] || @offplayer.number
    @offplayer.position = params[:position] || @offplayer.position
    @offplayer.save
    render 'show.json.jbuilder'
  end


end
