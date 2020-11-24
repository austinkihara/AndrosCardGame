class Deck
  attr_accessor :cards

  def initialize
    @cards = (1..13).to_a.product(["spades", "hearts", "diamonds", "clubs"]).collect{|n,s| Card.new(n,s)}
    self.shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def reset
    @cards = (1..13).to_a.product(["spades", "hearts", "diamonds", "clubs"]).collect{|n,s| Card.new(n,s)}
    self.shuffle
  end
end