class Player
  def initialize (player_name)
    @player_name = player_name
    @lives = 3
  end 

  def health 
    @lives
  end 
  
  def health_loss
    @lives = @lives - 1
  end
  
  def place_name
    @player_name
  end
end 