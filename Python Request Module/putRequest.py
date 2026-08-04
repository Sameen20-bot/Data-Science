import requests

r = requests.put('https://httpbin.org/put', data={'samu': 'best'})

print(r.text)