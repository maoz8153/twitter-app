class TwittsController < ApplicationController

  def show
    @twitt = Twitt.find(params[:id])
  end



end
