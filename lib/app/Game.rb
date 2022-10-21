class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne),
  #  le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :player

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
   
    print "Joueur 1, donne ton blaze : "
    player1 = gets.chomp
    puts "" + player1 + " auras le X !"

    puts "----------------------------------"

    print "Joueur 2, donne ton blaze : "
    player2= gets.chomp
    puts "" + player2 + " auras le O !"
    
    @board = Board.new
    @status = "on going t'as capté"
    @player = [Player.new(player1, "X"), Player.new(player2, "O")]
    @current_player = (@player.shuffle)[0]

    puts "" + @current_player.getName + "(" + @current_player.getValue + ") c'est à toi de jouer !"
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    # Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    dictionnaire = { "A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" => 8}

    # TO DO : afficher le plateau ici
    Show.new.show_board(@board)

    puts "Tour " + @board.getCountTurn.to_s + " :"
    print "" + @current_player.getName + " (" + @current_player.getValue + ") , où veux-tu jouer?\n >"
    choose = (gets.chomp)

    if (dictionnaire)[choose] != nil
      isOk = false
      while !isOk
        isOk = @board.play_turn( @current_player.getValue, (dictionnaire)[choose] )
        if (!isOk)
          puts "Tour " + @board.getCountTurn.to_s + " :"
          print "" + @current_player.getName + " (" + @current_player.getValue + ") , où veux-tu jouer?\n >"
          choose = (gets.chomp)
        end
      end
      
      @status = @board.victory?

      if @status == "on going t'as capté"
        @current_player = (@current_player.getValue == @player[0].getValue ? @player[1]: @player[0])
      else
        game_end
      end
    else
      puts "T'es mauvais JonhSon, essaye encore"
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "On en refait une !"
    @board = Board.new
    @status = "on going t'as capté"
    @current_player = (@player.shuffle)[0]

    puts "" + @current_player.getName + "(" + @current_player.getValue + ") c'est à toi de jouer !"
  end
    
  def game_end
    if (@status == "nul")
      puts "match nul !"
    else
      puts "" + (@player.select { |p| p.getValue == @status })[0].getName + " ("+ @status +") gagne !" 
    end
  end
  
end
