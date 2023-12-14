#!/usr/bin/python3
"""$queries the Reddit API"""
import requests


def number_of_subscribers(subreddit):
    """Return the total number of subscribes"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "najlae"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
