# generate match data
location = ["Water Cube", "National Stadium"]
swimming_index = 1
athletics_index = 5
last_index = 10
index = 0;
# INSERT INTO matches VALUES(1,'final', 'Water Cube', '2008-08-09', 1);
for i in range(swimming_index, athletics_index):
    for i in range(8):
        print('INSERT INTO matches VALUES({}, \'preliminary\', \'Water Cube\', \'2008-08-09\', \'{}\');'.format(index, swimming_index))
        index += 1;
    for i in range(2):
        print('INSERT INTO matches VALUES({}, \'semi-final\', \'Water Cube\', \'2008-08-10\', \'{}\');'.format(index, swimming_index))
        index += 1;
    print('INSERT INTO matches VALUES({}, \'final\', \'Water Cube\', \'2008-08-12\', \'{}\');'.format(index, swimming_index))
    index += 1
    swimming_index += 1

for i in range(athletics_index, last_index):
    for i in range(8):
        print('INSERT INTO matches VALUES({}, \'preliminary\', \'National Statium\', \'2008-08-09\', \'{}\');'.format(index, athletics_index))
        index += 1;
    for i in range(2):
        print('INSERT INTO matches VALUES({}, \'semi-final\', \'National Statium\', \'2008-08-10\', \'{}\');'.format(index, athletics_index))
        index += 1;
    print('INSERT INTO matches VALUES({}, \'final\', \'National Statium\', \'2008-08-12\', \'{}\');'.format(index, athletics_index))
    index += 1
    athletics_index += 1
