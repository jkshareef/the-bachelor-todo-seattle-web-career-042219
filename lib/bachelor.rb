def get_first_name_of_season_winner(data, season)
  # code here
  data.collect do |season_number, info|
    if season_number.split[1].to_i == season
      info.collect do |key, value|
        
            return data[season_number]["name"]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
