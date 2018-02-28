male_players = list()
female_players = list()
with open("player_data.sql", "r") as f:
    lines = f.readlines()
    for line in lines:
        if line.split("\'")[3] == "Male":
            male_players.append(line.split()[3])
        else:
            female_players.append(line.split()[3])

male_matches = list()
female_matches = list()
with open("match_data.sql", "r") as f:
    lines = f.readlines()
