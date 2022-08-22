require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    arr = self.split(/\.|\?|\!/)
    arr = arr.each{|elem| elem=="" ? arr.delete(elem) : next}

    return arr.compact.length
  end
end

# puts "This is a string! It has three sentences. Right?".count_sentences
# puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences