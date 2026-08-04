import requests

base_url = "https://pokeapi.co/api/v2/"

def get_pokemon(name):
    url = f"{base_url}/pokemon/{name}"
    response = requests.get(url)
    print(response)

    if response.status_code == 200:
        pokemon_data = response.json()
        return pokemon_data
    else:
        print(f"Data Failed to Retrieved: {response.status_code}")
    


name = 'Pikachu'

get_poko = get_pokemon(name)

if get_poko:
    print(f"Name: {get_poko["name"]}")
    print(f"ID: {get_poko["id"]}")