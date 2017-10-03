score_a = 0
score_b = 0
hit_count_a = 0
hit_count_b = 0
out = 0
defense_a = 0
defense_b = 0
base = [0,0,0]

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

10.times do
  if (out<3) then


    
  end

end
