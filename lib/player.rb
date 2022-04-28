class Player
   attr_reader :name, :player_symbol #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  
   def initialize(name)
   @name = name 
   @player_symbol = ["❌", "⭕️"] #TO DO : doit régler son nom et sa valeur
   end
 end