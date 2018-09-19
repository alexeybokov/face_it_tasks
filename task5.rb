# Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case.

class Task5
  def formatize(str, action)
    case action
    when :cap_words
      str.split.map(&:capitalize).join
    when :downcase
      str.downcase.split.join('_')
    when :css_words
      str.split.join('-')
    end
  end
end

str = 'i love ruby'

p Task5.new.formatize(str, :cap_words)
p Task5.new.formatize(str, :downcase)
p Task5.new.formatize(str, :css_words)
