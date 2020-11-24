class Game
  attr_accessor :players, :deck

  def initialize(players, deck)
    @players = players
    @deck = deck
  end

  def dealer
    @players.find { |player| player.name == 'Dealer' }
  end

  def start_game
    deal
    game_status
    deck.reset
  end

  def deal
    # move 2 cards from deck to players and dealer round robin
    players.each do |player|
      player.cards = [] if player.cards.present?
      2.times { player.cards << deck.cards.shift }
    end
  end

  def game_status
    # print player card scores
    players.each do |player|
      puts player.name + ' ' + player.score.to_s
    end

    print_winner
  end

  def print_winner
    high_player = players.max_by(&:score)
    dealer_score = dealer.score
    puts "the winner is " + ((high_player.score > dealer_score) ? high_player.name : dealer.name)
  end

  # def new_game
  #   deck.
  # end
end