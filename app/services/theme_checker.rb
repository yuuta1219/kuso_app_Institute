class ThemeChecker
  ALLOWED_WORDS  = ["light","dark","cupcake","bumblebee","emerald","corporate","synthwave","retro","cyberpunk","valentine","halloween","garden","forest","aqua","lofi","pastel","fantasy","wireframe","black","luxury","dracula","cmyk","autumn","business","acid","lemonade","night","coffee","winter"]

  def self.check_theme(theme)
    if theme.nil? || ALLOWED_WORDS.include?(theme)
      theme
    end
  end
end