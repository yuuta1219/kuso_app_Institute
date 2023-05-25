require 'openai'

class OpenAiClient

  def initialize
    @client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])
  end

  def chat(synonym)
    additional_prompt = "次に入力された食べ物が0カロリーである説明を一見論理的であるかのようにしてください。3行でお願いします。"  
    response = @client.chat(
      parameters: {
          model: "gpt-3.5-turbo",
          messages: [
            { role: "system", content: additional_prompt },
            { role: "user", content: synonym },
          ],
      })
    response.dig("choices", 0, "message", "content")
  end
end
