class InstantMessagesController < ApplicationController
  
  def index
    @instant_messages = InstantMessage.all
  end
end
