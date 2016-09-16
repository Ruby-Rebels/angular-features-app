class ChatroomsController < ApplicationController
  def show
  end

  def new
    @chatrooms = Chatroom.limit(10)
  end

  def create
    @chatroom = Chatroom.create(topic: params[:topic])
    redirect_to "/chatrooms/#{@chatroom.id}"
  end
end
