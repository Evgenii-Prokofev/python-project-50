import json


def formatter_json(diff):
    return json.dumps(diff, indent=2, separators=(',', ': '))