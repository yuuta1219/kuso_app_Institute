class ChatsController < ApplicationController
  rescue_from RuntimeError, with: :handle_unwanted_word
  
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

  private

  def handle_unwanted_word(e)
    if e.message == "Input contains unwanted word"
      redirect_to prison_path
    else
      raise e
    end
  end
end
