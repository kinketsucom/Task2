require File.dirname(__FILE__) + '/player'
require File.dirname(__FILE__) + '/team'
require File.dirname(__FILE__) + '/field'
require File.dirname(__FILE__) + '/hitcount'

#チーム設定
PlayerInfoA = {1 => { attack: 32, defense: 3},
               2 => { attack: 11, defense: 4},
               3 => { attack: 21, defense: 1},
               4 => { attack: 48, defense: 5},
               5 => { attack: 21, defense: 12},
               6 => { attack: 15, defense: 2},
               7 => { attack: 51, defense: 5},
               8 => { attack: 13, defense: 6},
               9 => { attack: 11, defense: 66}}

PlayerInfoB = {1 => { attack: 30, defense: 1},
               2 => { attack: 101, defense: 2},
               3 => { attack: 40, defense: 3},
               4 => { attack: 120, defense: 4},
               5 => { attack: 100, defense: 5},
               6 => { attack: 55, defense: 6},
               7 => { attack: 71, defense: 7},
               8 => { attack: 51, defense: 8},
               9 => { attack: 31, defense: 9}}



def simulateGame(team_a, team_b, field)
    showStart()

    for i in 1..5
        puts "-----"
        puts "#{i}回表"
        puts "-----"
        hitCount(team_a, team_b, field)
        showScore(team_a,team_b)
        field.removeRunner()
        puts ""
        # sleep(1)

        puts "-----"
        puts "#{i}回裏"
        puts "-----"
        hitCount(team_b, team_a, field)
        showScore(team_a,team_b)
        field.removeRunner()
        puts ""
        # sleep(1)
    end
    showEnd()
    showScore(team_a,team_b)
end


def showScore(team_a,team_b)#あんま意味ない気がして来た
    puts("#{team_a.team_score} - #{team_b.team_score}")
end

def showStart()#あんま意味ない気がして来た
  puts "********************"
  puts "プレイボール!"
  puts "********************"
end
def showEnd()#あんま意味ない気がして来た
  puts "********************"
  puts "ゲームセット！"
  puts "********************"
end

# メイン部分
field = Field.new
team_a = Team.new(PlayerInfoA)
team_b = Team.new(PlayerInfoB)
simulateGame(team_a, team_b,field)
