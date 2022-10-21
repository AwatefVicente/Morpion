class Show


  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    puts "   A B C \n"
    print "1 "
    board.getBoard.each do |b|
      if (b.getPosition % 3 == 0 && b.getPosition > 0)
        print "|\n" + ((b.getPosition / 3) + 1).to_s + " |"
      else
        print "|"
      end
      print (b.getValue == '' ? ' ' : b.getValue)
    end
    print "|\n"
  end

end