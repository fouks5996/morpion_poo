class BoardCase
  attr_accessor :case_symbol#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  def initialize
    @case_symbol = [" ", "❌", "⭕️"]
    # TO DO : doit régler sa valeur, ainsi que son numéro de case
  end
end
