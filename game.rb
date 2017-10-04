# 変態コード
score_a = 0
score_b = 0
hit_meter_a = [0,0,0,0,0,0,0,0,0,0]
hit_meter_b = [0,0,0,0,0,0,0,0,0,0]
out = 0
defense_a = 0
defense_b = 0
base = 0
batter_num_a = 1
batter_num_b = 1

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

puts("********************")
puts("プレイボール！")
puts("********************")
# 守備力計算
PlayerInfoA.each do |key,value|
  defense_a += value[:defense]
end
PlayerInfoB.each do |key,value|
  defense_b += value[:defense]
end

for i in 1..5
    puts("-----")
    puts(i.to_s+"回表")
    puts("-----")
    while(out<3) do #スリーアウトまで繰りかえす
      hit_meter_a[batter_num_a] += PlayerInfoA[batter_num_a][:attack]
      if (hit_meter_a[batter_num_a] < defense_b) then  #ヒットにならず
        out += 1
      else #ヒット
        hit_meter_a[batter_num_a] -= defense_b
        case hit_meter_a[batter_num_a] % 4
        when 0 then
          # p "1るいだ"
          base *= 1000
          base += 1
          if(base / 100000 == 1) then
            score_a += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_a += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_a += 1
            base -= 1000
          end
        when 1 then
          # p "2るいだ"
          base *= 1000
          base += 10
          if(base / 100000 == 1) then
            score_a += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_a += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_a += 1
            base -= 1000
          end

        when 2 then
          # p "3るいだ"
          base *= 1000
          base += 100
          if(base / 100000 == 1) then
            score_a += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_a += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_a += 1
            base -= 1000
          end

        else
          # p "ホームラン"
          base *= 1000
          if(base / 100000 == 1) then
            score_a += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_a += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_a += 1
            base -= 1000
          end
          score_a += 1
          base = 0
        end #case
      end #ifelse
      if(batter_num_a%9==0) then #周回
        batter_num_a = 0
      end
      batter_num_a += 1
    end #whileここまで
    out = 0
    base = 0
    puts(score_a.to_s+" - "+score_b.to_s)

# こっから裏
    puts("-----")
    puts(i.to_s+"回裏")
    puts("-----")
    while(out<3) do #スリーアウトまで繰りかえす
      hit_meter_b[batter_num_b] += PlayerInfoB[batter_num_b][:attack]
      if (hit_meter_b[batter_num_b] < defense_a) then  #ヒットにならず
        out += 1
      else #ヒット
        hit_meter_b[batter_num_b] -= defense_a
        case hit_meter_b[batter_num_b] % 4
        when 0 then
          # p "1るいだ"
          base *= 1000
          base += 1
          if(base / 100000 == 1) then
            score_b += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_b += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_b += 1
            base -= 1000
          end
        when 1 then
          # p "2るいだ"
          base *= 1000
          base += 10
          if(base / 100000 == 1) then
            score_b += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_b += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_b += 1
            base -= 1000
          end

        when 2 then
          # p "3るいだ"
          base *= 1000
          base += 100
          if(base / 100000 == 1) then
            score_b += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_b += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_b += 1
            base -= 1000
          end

        else
          # p "ホームラン"
          base *= 1000
          if(base / 100000 == 1) then
            score_b += 1
            base -= 100000
          end
          if(base / 10000 == 1) then
            score_b += 1
            base -= 10000
          end
          if(base / 1000 == 1) then
            score_b += 1
            base -= 1000
          end
          score_b += 1
          base = 0
        end
      end #case
      if(batter_num_b%9==0) then #周回
        batter_num_b = 0
      end
      batter_num_b += 1
    end #whileここまで
    out = 0
    base = 0
    puts(score_a.to_s+" - "+score_b.to_s)

end
