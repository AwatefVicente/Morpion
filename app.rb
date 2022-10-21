require 'bundler'
Bundler.require

require_relative 'lib/app/BoardCase'
require_relative 'lib/app/Player'
require_relative 'lib/app/Board'
require_relative 'lib/views/Show'
require_relative 'lib/app/Game'

class Application

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game = Game.new
    choix_joueur = true

    while choix_joueur #boucle de jeu 
      while game.status == "on going t'as capté"
        game.turn
      end
      puts "Une petite dernière ?"
      # true => partie continue, false => partie s'arrête
      choix_replay = {"oui" => true, "yes" => true, "y" => true, "o" => true, "non" => false, "no" => false, "n" => false}
      # get la réponse du joueur en down case
      get_joueur = gets.chomp.downcase
      # change la variable de la boucle de jeu
      choix_joueur = ((choix_replay)[get_joueur] == nil ? false : choix_replay[get_joueur])
      if (choix_joueur)
        game.new_round
      end
    end

  end
end

Application.new.perform
