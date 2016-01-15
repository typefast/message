class InstantMessagesController < ApplicationController
  
  def index
    @instant_messages = InstantMessage.all
  end
  
  def new
    @instant_message = InstantMessage.new
  end
  
  def show
  end
  
  def create
    @instant_message = InstantMessage.create(instant_message_params)
    if @instant_message.save
      flash[:success] = "New message created!"
      redirect_to @instant_message
    else
      flash[:error] = "There was an error!"
      render :new
    end
  end
  
  private 
    def instant_message_params
      params.require(:instant_message).permit(:message)
    end
end
