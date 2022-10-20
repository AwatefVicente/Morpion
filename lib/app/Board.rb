class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :board_case :count_turn

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

    @board_case = Array.new(9) {|e| BoardCase.new(e)}
    @count_turn = 1
  end
  
  def play_turn(value, position)

    if @board_case[position] = "" 
      @board_case[position] = @value #change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    else
      puts "choisi une autre case"
    end

  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

    win_combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
    
  end


end