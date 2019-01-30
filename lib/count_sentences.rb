require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words = self.split
    # self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count

    words.count do |word|
      word.sentence? || word.exclamation? || word.question?
    end
  end

end
