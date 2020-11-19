require 'pry'

class String
  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    count = []
    array = self.split(/[.?!]/)
    array != nil ? array.each{|i| count << i if i.size > 2} : nil
    count.size
  end
end