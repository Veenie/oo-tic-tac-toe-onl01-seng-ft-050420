class TicTacToe
  def initialize (board = nil)
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]  

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

 def move (index, token="X")
   @board[index] = token
   
 end
 
 def position_taken?(index)
  
   if @board[index] == "X" || @board[index] == "O"
     true
   else
     false
  end
 end
 
 def valid_move?(index)
   if index.between?(0,8) && !self.position_taken?(index)
     true
   else
     false
  end
 end
 
 def turn
   puts "Enter 1-9"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(index)
     move(token)
     display_board
   else
     turn
   end   
 end
 
 def turn_count
   @board.count{|token| token == "X" || token == "O"}
 end
 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def won?
    if @board = WIN_COMBINATIONS
      true
    else
      false
    end
  end
  
 
    


end