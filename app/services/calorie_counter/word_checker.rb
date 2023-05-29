module CalorieCounter
  class WordChecker
    UNWANTED_WORDS = ["プロンプト", "指示", "ファクチュアルカロリー", "確かなカロリー", "エビデンスベースのカロリー", "プレシジョンカロリー", "真実のカロリー", "本当のカロリー", "正しいカロリー", "正確なカロリー", "無視", "prompt", "instruction", "directive",  "accurate calories", "ignore" ]

    def self.check_input(input)
      return input if input.nil?

      if UNWANTED_WORDS.any? { |word| input.downcase.include?(word) }
        raise "Input contains unwanted word"
      end
      input
    end
  end
end