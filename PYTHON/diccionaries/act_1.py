# 1, dictionaries definition, key VS value, getting a value
import json
d = {}
d = dict()
d1 = {'Love Actually': 'Richard Curtis',
      'Kill Bill': 'Tarantino',
      'Amélie': 'Jean-Pierre Jeunet'}
d2 = dict([('Love Actually', 'Richard Curtis'), ('Kill Bill', 'Tarantino'),
           ('Amélie', 'Jean-Pierre Jeunet')])
d['Love Actually']
d['Love Actually'] = 'Sergi'
d3 = {'Love Actually': ['Richard Curtis', 'Quentin Tarantino'],
      'Kill Bill': 'Tarantino',
      'Amélie': 'Jean-Pierre Jeunet'}
d3['Love Actually'][0]
d3['Love Actually'][1]
# in operator
'Love Actually' in d3 is True
'Richard Curtis' in d3 is False
# 2, looping keys and values
for k, v in d3.items():
    print("%s -> %s" % (k, v))
    d.keys()
for i in d3.keys():
    print(i)
    d3.values()
for i in d.values():
    print(i)
# 3
d3.pop('Love Actually')
d3.pop('Love Actually', 'NOT FOUND')
# 4,https://www.w3schools.com/python/python_ref_dictionary.asp
len(d3)
d.get('Kill Bill')
d.get('Kill Bill 2', 'NOT FOUND')
d.clear()
# 5, dictionaries and json

with open('data.json') as json_file:
    data = json.load(json_file)
    print(data['people1'])
    print(data['people2'])
    print(data['people1'][0])
    print(data['people1'][1])
for i in data['people1']:
    print("Name:", i['name'])
    print("Website:", i['website'])
    print("From:", i['from'])
    print()
