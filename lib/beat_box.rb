class BeatBox
  attr_reader :list

  def initialize(data = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    if data
      append(data)
    end
  end

  def append(data)
    data.split.each do |word|
      next unless valid_beat?(word)
      @list.append(word)
    end
  end

  def prepend(data)
    data.split.each do |word|
      next unless valid_beat?(word)
      @list.prepend(word)
    end
  end

  def count
    @list.count
  end

  def all
    @list.to_string
  end

  def valid_beat?(data)
    %[deep doo ditt woo hoo shu tee bop la na dee humus dop].include?(data)
  end

  def play
    `say -r #{@rate} -v #{@voice} #{all}`
  end

  def rate=(rate)
    @rate = rate
  end

  def voice=(voice)
    @voice = voice
  end
end
