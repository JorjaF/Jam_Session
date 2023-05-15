class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split.each do |word|
      @list.append(word)
    end
  end

  def count
    @list.count
  end

  def play
    `say '#{list.to_string}'`
  end
end
