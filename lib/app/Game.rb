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
    
    print "Où veux-tu jouer?\n >"
    choose = (gets.chomp).to_i
    @board.play_turn

    # après, ton play_turn faut le modifier, car tu veux lui envoyer le signe, ET LA POSITION :O
    #dans la classe Board

  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "On en refait une?"
    @board = Board.new
    @status = "on going t'as capté"
    @current_player = @player[0] 
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul




  end    

end
