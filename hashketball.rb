# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_name)
  player_data = [alan_anderson, reggie_evans, brook_lopez, mason_plumlee, jason_terry, jeff_adrien, bismack_biyombo, desagna_diop, ben_gordon, kemba_walker].find { |player| player[:player_name] == player_name }
  player_data[:points]
end

def shoe_size(player_name)
  player_data = [alan_anderson, reggie_evans, brook_lopez, mason_plumlee, jason_terry, jeff_adrien, bismack_biyombo, desagna_diop, ben_gordon, kemba_walker].find { |player| player[:player_name] == player_name }
  player_data[:shoe]
end

def team_colors(team_name)
  teams = {
    "Brooklyn Nets" => ["Black", "White"],
    "Charlotte Hornets" => ["Turquoise", "Purple"]
  }

  teams[team_name]
end

def team_names
  [
    "Brooklyn Nets",
    "Charlotte Hornets"
  ]
end

def player_numbers(team_name)
  players = [
    {team: "Charlotte Hornets", number: 0, name: "Jeff Teague"},
    {team: "Charlotte Hornets", number: 2, name: "Lamb"},
    {team: "Charlotte Hornets", number: 4, name: "Miles Bridges"},
    {team: "Charlotte Hornets", number: 8, name: "Bismack Biyombo"},
    {team: "Charlotte Hornets", number: 33, name: "Cody Martin"},
    {team: "Brooklyn Nets", number: 0, name: "Caris LeVert"},
    {team: "Brooklyn Nets", number: 1, name: "Spencer Dinwiddie"},
    {team: "Brooklyn Nets", number: 11, name: "Kyrie Irving"},
    {team: "Brooklyn Nets", number: 30, name: "Taurean Prince"},
    {team: "Brooklyn Nets", number: 31, name: "Rodions Kurucs"}
  ]

  numbers = []
  players.each do |player|
    if player[:team] == team_name
      numbers << player[:number]
    end
  end

  numbers
end


def player_stats(player_name)
  case player_name
  when "Jeff Adrien"
    return jeff_adrien
  when "Bismack Biyombo"
    return bismack_biyombo
  when "DeSagna Diop"
    return desagna_diop
  when "Ben Gordon"
    return ben_gordon
  when "Kemba Walker"
    return kemba_walker
  when "Alan Anderson"
    return alan_anderson
  when "Reggie Evans"
    return reggie_evans
  when "Brook Lopez"
    return brook_lopez
  when "Mason Plumlee"
    return mason_plumlee
  when "Jason Terry"
    return jason_terry
  else
    return nil
  end
end



def big_shoe_rebounds
  players = [
    { name: "Jeff Adrien", shoe_size: 12, rebounds: 11 },
    { name: "Bismack Biyombo", shoe_size: 16, rebounds: 14 },
    { name: "DeSagna Diop", shoe_size: 14, rebounds: 12 },
    { name: "Ben Gordon", shoe_size: 15, rebounds: 5 },
    { name: "Kemba Walker", shoe_size: 13, rebounds: 8 },
    { name: "Alan Anderson", shoe_size: 14, rebounds: 10 },
    { name: "Reggie Evans", shoe_size: 14, rebounds: 9 },
    { name: "Brook Lopez", shoe_size: 17, rebounds: 11 },
    { name: "Mason Plumlee", shoe_size: 16, rebounds: 13 },
    { name: "Jason Terry", shoe_size: 15, rebounds: 2 }
  ]

  biggest_shoe_size = players.max_by { |player| player[:shoe_size] }[:shoe_size]
  player_with_biggest_shoe = players.find { |player| player[:shoe_size] == biggest_shoe_size }
  player_with_biggest_shoe[:rebounds]
end





