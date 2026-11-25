# Author: Verchus Prabhaker
# Fetches a GitHub profile using the REST API and prints key fields
import json
import urllib.request

url = "https://api.github.com/users/Verchusprabhaker"
with urllib.request.urlopen(url) as response:
    print("Status code:", response.status)
    data = json.load(response)

print("Name:", data["name"])
print("Public repos:", data["public_repos"])
print("Followers:", data["followers"])
print("Joined:", data["created_at"])
