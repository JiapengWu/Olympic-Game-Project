import random
random.seed(1)
male_players = list()
female_players = list()
with open("player_data.sql", "r") as f:
    lines = f.readlines()
    for line in lines:
        if line.split("\'")[3] == "Male":
            male_players.append(int(line.split()[3]))
        else:
            female_players.append(int(line.split()[3]))

# print(female_players)

male_matches = list()
female_matches = list()
with open("sports_data.sql", "r") as f:
    lines = f.readlines()
    for line in lines:
        sports_id = int(line.split()[4])
        if line.split()[-1] == "male":
            male_matches += [sports_id * 3 - 3, sports_id * 3 - 2, sports_id * 3 - 1]
        else:
            female_matches += [sports_id * 3 - 3, sports_id * 3 - 2, sports_id * 3 - 1]

# print(male_matches)
# print(female_matches)

finals = list()
with open("match_data.sql", "r") as f:
    lines = f.readlines()
    finals = [int(line.split()[4]) for line in lines if line.split('\'')[1] == 'final']

# print(finals)
result = 10.98
for final in finals:
    if final in male_matches:
        players = random.sample(male_players, 8)
    else:
        players = random.sample(female_players, 8)
    ranking = 1
    for player in players:
        if ranking == 1:
            medal = 'gold'
        elif ranking == 2:
            medal = 'silver'
        elif ranking == 3:
            medal = 'bronze'
        else: medal = 'null'
        print('INSERT INTO participate VALUES({}, {}, \'{}s\', {}, \'{}\');'.format(player, final, result, ranking, medal))
        ranking += 1
        result += 0.07







# INSERT INTO participate VALUES(1, 1, '17.03 s', 1, 'gold');
