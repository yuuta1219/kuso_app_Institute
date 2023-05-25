class ChatsController < ApplicationController
  
  def index
    client = OpenAiClient.new
    synonym = params[:synonym]
    @response = client.chat(synonym)
  end
end
