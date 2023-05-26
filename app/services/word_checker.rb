class WordChecker
  UNWANTED_WORDS = ["プロンプト", "指示", "", ]

  def self.check_input(input)
    if UNWANTED_WORDS.any? { |word| input.downcase.include?(word) }
       redirect_to _path
    end
    input
  end
end