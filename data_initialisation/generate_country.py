
countries = set()
with open("player_data.sql", "r") as f:
    lines = f.readlines()
    for line in lines:
        countries.add(line.split("\'")[5])
# print(countries)

for country in countries:
    print('INSERT INTO country VALUES(\'{}\', 0, 0, 0, 0);'.format(country))
