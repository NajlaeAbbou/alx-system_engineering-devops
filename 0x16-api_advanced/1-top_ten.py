#!/usr/bin/python3
"""prints the titles of the first 10 hot posts listed"""
import requests


def top_ten(subreddit):
    """Print the titles of the 10 hottest posts"""
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {
        "User-Agent": "najlae"
    }
    params = {
        "limit": 10
    }
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code == 404:
        print("None")
        return
    results = response.json().get("data")
    [print(c.get("data").get("title")) for c in results.get("children")]
