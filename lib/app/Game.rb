"""
# bah y'a ... 2 joueurs mdr
# le pire c'est que j'ai fais un ordre pour vous simplifier la tache >w<
# alors c'est pas ouf, la y'a que 2 players, donc tu peux directement faire un tableau [Player1, Player2], vu que les noms et signes sont différents
# Player c'est des classes mdr
# Player.new(nom, signe), en fait tu les crée dans le tableau directement
#     @players = [Player("Angel", "X"), Player("Awatef", "O")] <= comme ça
# aussi c'est le @players pas le current_player, il en manque 1 dans le attr_successor

# le client est roi, ta pas le choix
# après le ciel il est beau
# j'avoue, souris > manette
# y'en a beaucoup ... x)
# B R E F

# <= ici c'est juste un player de @player, qui est un tableau, donc tu prend le premier element pour pas tefaire chier 

# la tu choisi juste Player 1 ou Player 2, en fonction des préférences, de la somme d'argent qu'il donne, etc
# le premier joueur commencera toujours, après tu peux leurs demande leurs age et commencer par le plus jeune
# vas y on te regarde faire


# traduction => je crée un Dictionnaire ( Hash ) virtuel, donc je ne le met pas dans une variable
# c'est le { ... } et après je l'entoure de parenthèse, donc je prend le focus dessus
# et je séléctionne la clé 'choose'
# donc si l'utilisateur écrit "A1" ça va choisir la valeur liée à A1 qui est 0
# exact, Board il reçoit direct un nombre.
# en fait 0, 1, 2, 3, ... c'est la cellule du tableau de jeu sur lequel tu veux jouer.
# pour que le programme fasse le lien entre A1, B2, C1, ... on fait un "Hash" ou "Dictionnaire" pour les intimes, et comme son nom l'indique
# c'est un dictionnaire de valeur ou on fait un lien entre une définition "A1" et sa valeur exact.

# position c'est ça : ({ "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8 })[choose]
# en fait ça : { "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8 }
# ça fait un Hash virtuel, donc il existe pas vraiment mais il est défini.
# je l'entoure de () pour lui dire "Attend avant de mourir, je veux faire un truc avec toi"
# et je fais [choose] car pour séléctionner dans ce Hash, la définition qui est égale à ce que l'utilisateur met dans le gets.chomp

# si le mec il écrit "A1"
# choose = "A1"
# ({ "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8 })[choose] => 0

# si il écrit "C2"
# choose = "C2"
# ({ "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8 })[choose] => 5

# etc..., du coup il faut tester dans le cas ou ce qu'il rentre c'est mauvais.
# donc ... If :D
#ici par contre
    # yup, après le truc, c'est que ça prend beaucou... au revoir angel
    # ça prend bcp de places sur la mémoire.
    # exact
    # oui bien sûr, c'est pour un exo, nsm la mémoire.
    # yup, après si vous voulez ajouter plus de choix pour les cases
    # vous pouvez créer une variable avec le Hash complet
    # genre ^


    # après, ton play_turn faut le modifier, car tu veux lui envoyer le signe, ET LA POSITION :O
    #dans la classe Board
    # bonne question comment on sait qui viens de jouer ... si seulement on avais une variable avec le joueur actuel
    # victory il va faire quoi ?
    # comment il sait qui viens de jouer ?
    # donc ... exact
    # donne lui le savoir
    # omagad she did it

    # too fast angel elle a deja fini, pas besoin de le dupliquer par contre
        
    # la condition ... c'est de prendre le joueur qui n'est pas current player
    # ou est ce qu'on a tous nos players ?
    # player il contient quoi ?
    # et toi tu a quoi dans current player ?
    # Si tu a player 1 tu veux player 2 mais si tu a player 2 tu veux player 1
    # current_player = (current_player == @player[0] ? @player[1] : player[0]) après le : c'est le sinon exact
    # la du coup tu met dans current_player: player[0] si current_player == player[1] sinon tu met player[1] si current_player == player[0]
    # on veux check si current_player est égale à player 1, comment on fait ?
    # ok good, condition si vrai ( après le ? ) => si c'est vrai alors ...
    # système ternaire, ce que tu met dedans va être retourné donc tu peux faire ça


  # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  # maybe use ... status ?
  # désolé chere demoiselles
  # je dois quitter le batiment, on me vire mdr
  # cadeau:
  
  def game_end
    if (@status == "nul")
      puts "match nul !"
    else
      puts "" + @status.name + " gagne !"
    end
  end
"""

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne),
  #  le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :player

  @board = []

  def initialize (name)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    # regarde le plutot dans ce sens : 1: Créé une INSTANCE de board, 2: Créé un status "on going" , 3: "créé un tableau avec 2 player, 4: choisi le player qui joue en premier
    
    @board = Board.new
    #étape 1 c'est bon 
    @status = "on going t'as capté"
    # étape 2 c'est ... presque bon mdr, on va dire ça passe, ça passe crême
    @player = [Player.new(player1, sign), Player.new(player2, sign)]
    # étape 3 : Nikel Krome
    @current_player = @player[0] 
    # étape 4 : C'est passé comme une lettre à la poste
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    # Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    dictionnaire = { "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8}

    # TO DO : afficher le plateau ici
    # Show.new.show_board(@board)

    print "Où veux-tu jouer?\n >"
    choose = (gets.chomp)

    if (dictionnaire)[choose] != nil
      @board.play_turn( (dictionnaire)[choose] )
      @status = @board.victory      

      if @status == "on going t'as capté"
        # TO DO : passer au joueur suivant si la partie continue
        # ça c'est simple, comment tu passe au joueur suivant, alors il y a de l'idée, mais non
        
        @current_player = (@current_player == @player[0] ? @player[1]: @player[0])
        #c'est mieux avec les parenthèses tu t'y retrouve mieux
      else 
        # TO DO : game end si bah ... game end
        # regardez plus bas dans le fichier
        game_end
      end
    else
      puts "T'es mauvais JonhSon"
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "On en refait une?"
    @board = Board.new
    @status = "on going t'as capté"
    @current_player = @player[0] 
  end
    
  def game_end
    if (@status == "nul")
      puts "match nul !"
    else
      puts "" + @status.name + " gagne !"
    end
  end

  
end
