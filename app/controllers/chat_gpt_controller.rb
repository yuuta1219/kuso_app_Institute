class ChatsController < ApplicationController
  
  def index; end
  
  def create
    client = OpenAIClient.new
    synonym = params[:synonym]  # ここで、リクエストパラメータからsynonymを取得します
    @response = client.chat(synonym)
  end
end
