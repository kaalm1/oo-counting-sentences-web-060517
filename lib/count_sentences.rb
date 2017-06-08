require 'pry'

class String

  def sentence?
    self.chars.last == '.'
  end

  def question?
    self.chars.last == '?'
  end

  def exclamation?
    self.chars.last == '!'
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    sentences.select {|sentence| sentence != ''}.length
  end
end
