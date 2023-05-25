class ChatsController < ApplicationController
  
  def index
    random_number = rand(1..5)

    if random_number != 1
      client = OpenAiClientDevil.new
    else
      client = OpenAiClient.new
    end
    synonym = params[:synonym]
    @response = client.chat(synonym)
  end
end
