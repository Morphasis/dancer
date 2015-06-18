class MsgsController < ApplicationController
  def new
    @msg = Msg.new
    @msgs = Msg.all
  end

  def create
    @msg = Msg.new(msg_params)
    if @msg.save
      redirect_to msgcomp_path
    end
  end
  
def msg_params
  params.require(:msg).permit(:name, :emails, :content, :phone)
end

end
