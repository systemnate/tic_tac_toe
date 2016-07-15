require_relative "../lib/tic_tac_toe.rb"

puts "Welcome to Tic Tac Toe"
nate  = TicTacToe::Player.new( { color: "X", name: "Nate" } )
denay = TicTacToe::Player.new( { color: "Y", name: "Denay" } )
players = [nate, denay]
TicTacToe::Game.new(players).play
