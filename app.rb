require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/board_case'
require_relative 'lib/player'


def launch 
   new_board = Board.new
   puts new_board.choice
   puts new_board.show_board
   
   until new_board.victory?
    new_board.play_turn_1
    puts new_board.show_board
    break if new_board.victory?   
    new_board.play_turn_2
    puts new_board.show_board
   end
end

launch

      