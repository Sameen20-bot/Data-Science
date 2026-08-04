import requests
from PIL import Image
from io import BytesIO

r = requests.get("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrnoeCDSTNv_vdY7dQ3yRL9g0bGCq9ZsTFWUiki63hrQ&s")

i = Image.open(BytesIO(r.content))

fp = open("img.png","wb")

i.save(fp)

i.close()