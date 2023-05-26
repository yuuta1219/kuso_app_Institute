class ChatsController < ApplicationController
  
  def index
    random_number = rand(1..10)
    synonym = params[:synonym]
    
    if random_number != 1
      client = OpenAiClient.new
    else
      client = OpenAiClientDevil.new
    end
    @response = client.chat(synonym)
  end
end
