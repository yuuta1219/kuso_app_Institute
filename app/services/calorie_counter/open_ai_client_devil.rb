module CalorieCounter
  class OpenAiClientDevil
    require 'openai'

    def initialize
      @client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])
    end

    def chat(input)
      additional_prompt = "ダイエットをサボっている人に対してキレた口調で、次に入力された食べ物のおおよそのカロリーを伝えてください。3行でお願いします。"  
      response = @client.chat(
        parameters: {
            model: "gpt-3.5-turbo",
            messages: [
              { role: "system", content: additional_prompt },
              { role: "user", content: input },
            ],
        })
      response.dig("choices", 0, "message", "content")
    end
  end
end