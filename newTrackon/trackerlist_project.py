from time import sleep

import requests

from newTrackon import trackon


def main():
    while True:
        tlist = requests.get(
            "https://o--cocacoa.repl.co/trackers.txt"
        )
        trackon.enqueue_new_trackers(tlist.text)
        sleep(86400)
