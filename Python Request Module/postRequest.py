import requests

r = requests.post('https://httpbin.org/post?a=b', data={'key': 'value'})

print(r.text)