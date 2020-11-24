# README
Script to start the game
  dealer = Player.new("Dealer")
  p1 = Player.new("player1")
  p2 = Player.new("player2")
  p3 = Player.new("player3")
  p4 = Player.new("player4")

  d = Deck.new

  game = Game.new([a,dealer,p2,p3,p4], d)

  game.start_game


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
