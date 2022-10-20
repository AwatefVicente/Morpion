class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :board_case :count_turn

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board_case = Array.new(9) {|e| BoardCase.new(e)  } #c'est une classe faut pas oublier le .new ( qui appelle initialize )
    @count_turn = 1

    #donc la vous avez un tableau de 9 boardcases.

    """
    BoardCase.new( ... ) # <= la tu définie une instance de BoardCase, donc tu crée une valeur avec la classe BoardCase
    @board[BoardCase.new(...) * 9] # <= la tu définie un tableau avec 1 instance de BoardCase, c'est bien mais il en faut ... 9 !
    # pas vraiment, la tu crée 1 BoardCase, et tu lui envoie 9 arguments c'est comme si tu faisais 
    # BoardCase(0,1,2,3,4,5,6,7,8,9), exact, c'est pas utile x)
     une BoardCase
        A B C
        _ _ _
    1  |_|_|_| <= la il y a 3 BoardCases
    2  |_|_|_| <= pareil
    3  |_|_|_| <= pareil
    le tout c'est une Board
    donc Board contient 9 BoardCase, qui eux sont vides
    exact, et en soit la 'position' c'est son identifiant donc son numéro dans le Board ( pour le retrouver facile )
    Vous pouvez mettre ce que vous voulez
    moi j'ai mis la place dans le tableau de board pour que ce soit plus facile à jouer avec
    en gros c'est le nom de la BoardCase
    moi j'ai mis 0, 1, 2 ,3 ,4 etc ...
    pour faciliter le choix du player
    exact

    class BoardCase
      attr_accessor :value :position
      
      def initialize(id)
        @value = ""
        @position = id
      end
    end

    """
  end


  """
  # maintenant le play_turn
  # le plus simple
  # tu demande au joueur ou il veux jouer, et tu met sa value dans le BoardCase
  # chompy chomp time
  # en fait le chompy chomp il est pas vraiment ici, mais tu peux le coder dans cette méthode pour l'instant.
  # nop, dans la classe Game
  # je fais le Game la, et dans le turn tu aura le gets.chomp en fait
  # Cervo go vrooooom
  # ici en fait tu va mettre la value du player qui joue, dans la case qu'il a choisi
  # 1 ligne en vrai
  # sauf qu'on veux juste la cellule ou le player va jouer, exact

  # <= pas loin, quand on fait le chompy chomp on récupére un string, il nous faut un integer, voila flemme d'ecrire
  # alors maintenant il faut mettre la value dans la case.
  # comment on a la value ?
  # la c'est la value du player qu'on veux, celui qui joue, exact
  # nop, choose c'est la case ou il veux jouer.

  # qu'est ce que le player va écrire dans le terminal pour choisir sa case ?
  # et ça correspond à quoi ?
  # exact, et elles sont ou les BoardCases ?
  # dans le tableau exact, et du coup comment tu accède à une valeur du tableau ?
 
  1 = [0:0]
    2 = [1:0]
    3 = [2:0]
    4 = [0,1]
    5 = [1,1]
    6 = [2,1]
    7 = [0,2]
    8 = [1,2]
    9 = [2,2]
 
    #h = Hash["A1" = [0,0], "B1" = [1,0], "C1" = [2,0], "A2" = [0,1], "B2" = [1,1], "C2" = [2,1], "A3" = [0,2], "B3" = [1,2], "C3" = [2,2] ]

    # regarde dans la classe Player le TODO de initialize, exact, mais ça tu peux le get que dans les arguments de la méthode.
    # c'est mieux quand c'est propre
    # ici on fait quoi, exact, après, un peu de sécurité, il se passe quoi si il choisit une case non vide ?
    # yup
    # oh ça va, si tu veux pas de if tu fais une ternaire ;), bah en soit, tu veux juste mettre dans la case si elle est vide.
    # donc tu check si elle est ..., nop, regarde au dessus, regarde dans ton BoardCase à quoi est égal une cellule vide, yup, la c'est bon
    # Si la cellule est '' donc c'est bon, si elle est vide tu peux mettre la value du player

    # . . . . . . . . .
    # vous le voulez vraiment le .Hash
    # x) position, c'est un ... NOMBRE :O
    # choose c'est un ... NOMBRE :O
    # du coup ... 
    # alors vous vous habillez comme vous voulez
    # concentrons nous sur le code

    # go dans Game turn
    # car position c'est ce qu'y viens de Game.turn, c'est le choix du player.
    # choose il existe plus ici, regarde, y'a plus de choose.
    # oui, j'ai fais la même chose dans turn directement, pour sauvegarder la mémoire.


    """

  def play_turn(value, position)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    #choose = position.["A1" = [0,0], "B1" = [1,0], "C1" = [2,0], "A2" = [0,1], "B2" = [1,1], "C2" = [2,1], "A3" = [0,2], "B3" = [1,2], "C3" = [2,2] ]

    if @board_case[position] = "" 
      @board_case[position] = @value
    else
      puts "choisi une autre case"
    end

  end

  # honnêtement, j'ai pas envie de le faire maintenant ça peux attendre ça, c'est en dernier x)
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