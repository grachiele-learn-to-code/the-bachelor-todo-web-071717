def get_first_name_of_season_winner(data, season)
  data.each do |k,v|
    if k == season
      v.each do |hash|
        if hash["status"] == "Winner"
          return hash["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |k,v|
    v.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |k,v|
    v.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |k,v|
    v.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  sum_age = 0
  data.each do |k,v|
    if k == season
      counter = v.length
      v.each do |hash|
        sum_age += hash["age"].to_i
      end
    end
  end
  (sum_age.to_f / counter).round 
end
