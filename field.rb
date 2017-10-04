class Field
    attr_accessor :base
    def initialize()
      @base = { 1 => 0, 2 => 0, 3 => 0}
    end

    def removeRunner() #スリーアウトでベースをクリア
      @base = { 1 => 0, 2 => 0, 3 => 0}
    end

    def baseHit(hit_value) #ヒット計算
      score = 0
      case hit_value
      when 0 then #1塁打
        score = @base[3]
        @base[3] = @base[2]
        @base[2] = @base[1]
        @base[1] = 1
        return score

      when 1 then #2塁打
        score = @base[3] + @base[2]
        @base[3] = @base[1]
        @base[2] = 1
        @base[1] = 0
        return score
      when 2 then #3塁打
        score = @base[3] + @base[2] +@base[1]
        @base[3] = 1
        @base[2] = 0
        @base[1] = 0
        return score
      else #ホームラン
        score = @base[3] + @base[2] +@base[1]
        score += 1
        @base[3] = 0
        @base[2] = 0
        @base[1] = 0
        return score
      end

end
