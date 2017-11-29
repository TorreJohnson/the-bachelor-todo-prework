require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |seasons, contestants|
    if seasons.to_s == season
      contestants.each do |person|
        if person["status"] == "Winner"
          winner = person["name"].split(" ")
        end
      end
    end
  end
  winner[0]
end

def get_contestant_name(data, occupation)
  employee = ""
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        employee = person["name"]
      end
    end
  end
  employee
end

def count_contestants_by_hometown(data, hometown)
  hometown_heroes = 0
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        hometown_heroes += 1
      end
    end
  end
  hometown_heroes
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_years = 0
  contestant_total = 0
  data.each do |seasons, contestants|
    if season == seasons.to_s
      contestants.each do |person|
        total_years += person["age"].to_i
        contestant_total += 1
      end
    end
  end
  (total_years.to_f / contestant_total.to_f).round
#  average_age
end
