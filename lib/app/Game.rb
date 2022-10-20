class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne),
  #  le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :player

  @board = []

  def initialize (name)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
   
    @board = Board.new
    @status = "on going t'as capté"
    @player = [Player.new(player1, sign), Player.new(player2, sign)]
    @current_player = @player[0] 
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    # Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    dictionnaire = { "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" = 8}

    # TO DO : afficher le plateau ici
    Show.new.show_board(@board)

    print "Où veux-tu jouer?\n >"
    choose = (gets.chomp)

    if (dictionnaire)[choose] != nil
      @board.play_turn( (dictionnaire)[choose] )
      @status = @board.victory      

      if @status == "on going t'as capté"
        @current_player = (@current_player == @player[0] ? @player[1]: @player[0])
      else
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
