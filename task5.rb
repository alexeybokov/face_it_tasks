# Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case.

class Task5
  def formatize(str, action)
    case action
    when :cap_words
      str.split(' ').map { |w| w.capitalize }.join('')
    when :downcase
      str.split(' ').map { |w| w.downcase }.join('_')
    when :css_words
      str.split(' ').map { |w| w }.join('-')
    end
  end

  str = 'i love ruby'

  p formatize(str, :cap_words)
  p formatize(str, :downcase)
  p formatize(str, :css_words)
end
