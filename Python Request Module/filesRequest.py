import requests
from PIL import Image
from io import BytesIO

r = requests.get("https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-723.exe")

i = BytesIO(r.content)

fp = open("win.exe","wb")

fp.write(r.content)

fp.close()