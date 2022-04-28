class Board

  def initialize
    @x = BoardCase.new

    @case1 = @x.case_symbol[0]
    @case2 = @x.case_symbol[0]
    @case3 = @x.case_symbol[0]
    @case4 = @x.case_symbol[0]
    @case5 = @x.case_symbol[0]
    @case6 = @x.case_symbol[0]
    @case7 = @x.case_symbol[0]
    @case8 = @x.case_symbol[0]
    @case9 = @x.case_symbol[0]

    @player1 = nil
    @player2 = nil
    @hit_player1 = nil
    @hit_player2 = nil
  end
  
  def show_board
   puts "1   #{@case1} |2  #{@case2}  |3   #{@case3}  "
   puts "       |       |"
   puts " --------------------- "
   puts "4   #{@case4} |5  #{@case5}  |6   #{@case6}  "
   puts "       |       |"
   puts " --------------------- "
   puts "7   #{@case7} |8  #{@case8}  |9   #{@case9}  "
   puts "       |       |"
  end

 def choice
  puts "⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇"
  puts "     Joueur 1, choisis un pseudo"
  puts "⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇"
  name = gets.chomp
  @player1 = Player.new(name)
  puts "🥸 Bienvenue dans la partie #{@player1.name}"
  puts "Tu auras le symbole ❌"
  puts ""
  @hit_player1 = @player1.player_symbol[0]

  puts "⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇"
  puts "     Joueur 2, choisis un pseudo"
  puts "⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇⌇"
  name = gets.chomp
  @player2 = Player.new(name)
  puts "😎 Bienvenue dans la partie #{@player2.name}"
  puts "Tu auras le symbole ⭕️"
  @hit_player2 = @player2.player_symbol[1]
 end

 def play_turn_1
  puts "🔴 A toi de jouer #{@player1.name} 🔴"
  number = gets.chomp
  case number
    when "1"
    @case1 = @x.case_symbol[1]
    when "2"
    @case2 = @x.case_symbol[1]
    when "3"
    @case3 = @x.case_symbol[1]
    when "4"
    @case4 = @x.case_symbol[1]
    when "5"
    @case5 = @x.case_symbol[1]
    when "6"
    @case6 = @x.case_symbol[1]
    when "7"
    @case7 = @x.case_symbol[1]
    when "8"
    @case8 = @x.case_symbol[1]
    when "9"
    @case9 = @x.case_symbol[1]
  end
 end

def play_turn_2
  puts "🔴 A toi de jouer #{@player2.name} 🔴"
 number = gets.chomp
 case number
 when "1"
 @case1 = @x.case_symbol[2]
 when "2"
 @case2 = @x.case_symbol[2]
 when "3"
 @case3 = @x.case_symbol[2]
 when "4"
 @case4 = @x.case_symbol[2]
 when "5"
 @case5 = @x.case_symbol[2]
 when "6"
 @case6 = @x.case_symbol[2]
 when "7"
 @case7 = @x.case_symbol[2]
 when "8"
 @case8 = @x.case_symbol[2]
 when "9"
 @case9 = @x.case_symbol[2]
 end
end

  def victory?
     if @case1 == @case2 && @case1 == @case3 && @case1 != " " #3 en haut
        if @case1 == @hit_player1
          puts "#{@player1.name}, vous avez gagné"
        elsif @case1 == @hit_player2
          puts "#{@player2.name}, vous avez gagné"
        end
      return true

     elsif @case4 == @case5  && @case5 == @case6 && @case6 != " "
        if @case4 == @hit_player1
          puts "#{@player1.name}, vous avez gagné"
        elsif @case4 == @hit_player2
          puts "#{@player2.name}, vous avez gagné"
        end
      return true
        
     elsif @case7 == @case8 && @case8 == @case9 && @case7 != " " #3 en bas
      if @case7 == @hit_player1
        puts "#{@player1.name}, vous avez gagné"
      elsif @case7 == @hit_player2
        puts "#{@player2.name}, vous avez gagné"
      end
      return true
      
     elsif @case1 == @case4 && @case4 == @case7 && @case7 != " " #3 colonne gauche
      if @case1 == @hit_player1
        puts "#{@player1.name}, vous avez gagné"
      elsif @case1 == @hit_player2
        puts "#{@player2.name}, vous avez gagné"
      end
      return true 
     elsif @case3 == @case6 && @case6 == @case9 && @case9 != " " #3 colonne droite
      if @case3 == @hit_player1
        puts "#{@player1.name}, vous avez gagné"
      elsif @case3 == @hit_player2
        puts "#{@player2.name}, vous avez gagné"
      end
      return true 
     elsif @case1 == @case5 && @case1 == @case9 && @case5 != " " #3 diag gauche bas
      if @case1 == @hit_player1
        puts "#{@player1.name}, vous avez gagné"
      elsif @case1 == @hit_player2
        puts "#{@player2.name}, vous avez gagné"
      end
      return true 
     elsif @case3 == @case5 && @case5 == @case7 && @case3 != " " #3 diag droite bas
      if @case3 == @hit_player1
        puts "#{@player1.name}, vous avez gagné"
      elsif @case3 == @hit_player2
        puts "#{@player2.name}, vous avez gagné"
      end 
      return true  
     else 
      return false 
     end 
  end
end