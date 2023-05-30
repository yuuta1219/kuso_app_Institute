class CalorieCounter::ChatsController < CalorieCounter::BaseController
  rescue_from RuntimeError, with: :handle_unwanted_word
  before_action :prisoner_go_to_prison , only: [:index]
  before_action :not_prison, only: [:purgatory]
  
  def index
    random_number = rand(1..10)
    input = CalorieCounter::WordChecker.check_input(params[:input])
    if random_number != 1
      client = CalorieCounter::OpenAiClient.new
    else
      client = CalorieCounter::OpenAiClientDevil.new
    end
    @response = client.chat(input)
  end
  
  def prison
    user = User.create_prisoner
    auto_login(user)
  end

  def purgatory; end

  def mercy
    current_user.destroy if current_user.prisoner?
    redirect_to calorie_counter_chats_path
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
