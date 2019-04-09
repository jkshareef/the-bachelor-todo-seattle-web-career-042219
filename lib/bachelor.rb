def get_first_name_of_season_winner(data, season)
  # code here
  data.collect do |season_number, info|
    if season_number.split[1].to_i == season
      info.collect do |hash|
        if hash["status"] == "Winner"
          return data[season_number][hash]["name"].split[1]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  array = Array.new
  data.collect do |season_number, info|
    info.collect do |hash|
      if hash["occupation"] == occupation
        array.push(hash["name"])
      end
    end
  end 
  array
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.collect do |season_number, info|
    info.collect do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
  data.collect do |season_number, info|
    info.collect do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  contestants = 0
  total = 0
  
  data.collect do |season_number, info|
    if season_number.split[1].to_i == season
      info.collect do |hash|
        total += hash["age"].to_i
        contestants += 1
      end
    end
  end
  total/contestants
end
