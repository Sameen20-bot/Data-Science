import requests

r = requests.get("https://www.google.com")

print(r.status_code)
print(r.headers['content-type'])
print(r.encoding)
print(r.text)
print(r.json())