class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de 
  attr_accessor :value :position
  
  def initialize(case_id)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case

    @value = ""
    @position = case_id

  end
  
end


# Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.) 
# et son contenu (Soit elle est vide, soit elle a comme valeur le string "x", 
# soit elle a comme valeur le string "o").