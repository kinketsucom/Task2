require File.dirname(__FILE__) + '/player'

class Team
  attr_accessor :member, :batter_num, :total_defense, :team_score

  def initialize(player_info = {})
    @team_score = 0
    @batter_num = 1 #打順

    #メンバの能力
    @member = Hash.new
    @total_defense = 0
    player_info.each do |key, value|
      player = Player.new
      player.attack = value[:attack]
      player.defense = value[:defense]
      @total_defense += player.defense
      @member.store(key,player) #これで打順と能力がキマるはず
    end




  end
end
