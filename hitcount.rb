require File.dirname(__FILE__) + '/field'

def hitCount(attack_team, defense_team,field)
    out = 0
    while(out < 3)
        num = attack_team.batter_num #打つ人の番号
        batter = attack_team.member[num] #打つ人
        batter.hit_meter += batter.attack
        if(batter.hit_meter >= defense_team.total_defense)
            batter.hit_meter -= defense_team.total_defense
            hit_num = batter.hit_meter % 4
            attack_team.team_score += field.baseHit(hit_num)
        else
            out += 1
        end
        attack_team.batter_num += 1
        if (attack_team.batter_num >= 10)
            attack_team.batter_num = 1
        end
    end

end
