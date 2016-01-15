class InstantMessagesController < ApplicationController
  
  def index
    @instant_messages = InstantMessage.all
  end
  
  def new
    @instant_message = InstantMessage.new
  end
  
  def create
  end
end
