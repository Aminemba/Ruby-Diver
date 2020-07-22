class Player
  def hand
    # 「プレイヤーに 0 ~ 2を入力させる文章」を表示させます。
    puts " Please insert your choice "
    puts "0:Goo, 1:チョキ, 2:Par"
    input_hand = gets.to_i


    i=0
      while i == 0 do

        if  input_hand == 0 || input_hand == 1 || input_hand == 2
        i = 1
        puts " you have chosen #{input_hand}"
        else
          i=0
          puts " Invalid Choice , Please insert again"
          puts "0:Goo, 1:チョキ, 2:Par"
          input_hand = gets.to_i

        end

     end
     return input_hand
  end

end

class Enemy
  def hand
    enemy_hand = rand(0..2)
    #puts " Your enemy has chosen #{enemy_hand}"
    return enemy_hand
  end

end

class Janken
  attr_accessor :input_hand, :enemy_hand ,:janken
  def pon(player_hand, enemy_hand)

    janken = ["Goo", "チョキ", "Par"]
    puts "You have Chosen #{input_hand} 。"
    puts "Your enemy havs Chosen #{enemy_hand} 。"

      if input_hand == enemy_hand
         puts "あいこ"
         return true

      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
         puts "You Win!"
         return false


     else
        puts " You Lost , Sorry !"
        return false
     end
 end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game=true

while next_game

  next_game = janken.pon(player.hand, enemy.hand)

end
