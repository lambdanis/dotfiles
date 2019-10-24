import json
import pathlib
import sys


def compare_dicts(dict_1, dict_2, prefix):
    diff = []

    for key, val_1 in dict_1.items():
        val_2 = dict_2.get(key)
        if isinstance(val_1, dict) and isinstance(val_2, dict):
            diff.extend(compare_dicts(val_1, val_2, f'{prefix}.{key}'))
        elif isinstance(val_1, list) and isinstance(val_2, list):
            diff.extend(compare_lists(val_1, val_2, f'{prefix}.{key}'))
        elif val_1 != val_2:
            diff.append(f'{prefix}.{key} | in first: {val_1}, in second: {val_2}')

    return diff


def compare_lists(list_1, list_2, prefix):
    diff = []

    if len(list_1) != len(list_2):
        diff.append(f'{prefix} | in first has length {len(list_1)}, in second {len(list_2)}')
    else:
        for i, (val_1, val_2) in enumerate(zip(list_1, list_2)):
            if isinstance(val_1, dict) and isinstance(val_2, dict):
                diff.extend(compare_dicts(val_1, val_2, f'{prefix}[{i}]'))
            elif isinstance(val_1, list) and isinstance(val_2, list):
                diff.extend(compare_lists(val_1, val_2, f'{prefix}[{i}]'))
            elif val_1 != val_2:
                diff.append(f'{prefix}[{i}] | in first: {val_1}, in second: {val_2}')

    return diff


if __name__ == '__main__':
    json_1 = json.loads(pathlib.Path(sys.argv[1]).read_text())
    json_2 = json.loads(pathlib.Path(sys.argv[2]).read_text())
    for e in compare_dicts(json_1, json_2, ''):
        print(e)
