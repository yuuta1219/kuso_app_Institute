class ChatsController < ApplicationController
  
  def index
    random_number = rand(1..8)

    if random_number != 1
      client = OpenAiClient.new
    else
      client = OpenAiClientDevil.new
    end
    synonym = params[:synonym]
    @response = client.chat(synonym)
  end
end
