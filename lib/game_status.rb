# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2]
  [3,4,5]
  [6,7,8]
  [1,4,7]
  [2,5,8]
  [0,4,8]
  ]6,4,2]
  ]
  
  # Define won?, full?, draw?, over?, and winner below
  
 7 WIN_COMBINATIONS = [ 
8   [0,1,2], 
9   [3,4,5], 
10   [6,7,8], 
11   [0,3,6], 
12   [1,4,7], 
13   [2,5,8], 
14   [0,4,8], 
15   [6,4,2] 
16 ] 
17 
 
18 # Define won?, full?, draw?, over?, and winner below 
19 def won?(board) 
20   WIN_COMBINATIONS.detect do |combo| 
21     board[combo[0]] == board[combo[1]] && 
22     board[combo[1]] == board[combo[2]] && 
23     position_taken?(board, combo[0]) 
24   end 
25 end 
26 
 
27 def full?(board) 
28   board.all?{|token| token == "X" || token == "O"} 
29 end 
30 
 
31 def draw?(board) 
32   full?(board) && !won?(board) 
33 end 
34 
 
35 def over?(board) 
36   won?(board) || full?(board) 
37 end 
38 
 
39 def winner(board) 
40   if winning_combo = won?(board) 
41     board[winning_combo.first] 
42   end 
43 end 

