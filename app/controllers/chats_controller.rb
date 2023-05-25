class ChatsController < ApplicationController
  
  def index
    client = OpenAIClient.new
    synonym = params[:synonym]
    @response = client.chat(synonym)
  end
end
