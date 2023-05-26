class ChatsController < ApplicationController
  
  def index
    random_number = rand(1..10)
    input = WordChecker.check_input(params[:input])
    if random_number != 1
      client = OpenAiClient.new
    else
      client = OpenAiClientDevil.new
    end
    @response = client.chat(input)
  end

  def prison
  end
end
