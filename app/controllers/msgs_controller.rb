class MsgsController < ApplicationController
  def new
    @msg = Msg.new
  end

  def create
    @msg = Msg.new(params[:msg])
    if @msg.save
      redirect_to new_msg_path
    end
  end

end
