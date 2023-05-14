import json
from argparse import ArgumentDefaultsHelpFormatter, ArgumentParser


def add_new_keys_to_supplication(
    start_id: int,
    end_id: int,
    count: int,
    source: str,
    filename: str = 'MorningEveningZikrData.json',
) -> None:
    ids = range(start_id, end_id + 1)
    with open(filename) as file:
        supps = json.load(file)
        for s in supps:
            if s['id'] in ids:
                s['count'] = count
                s['source'] = source
    with open(filename, 'w') as file:
        json.dump(supps, file, ensure_ascii=False, indent=2)


if __name__ == '__main__':
    parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter)
    parser.add_argument('start_id', help='start id number of supplication')
    parser.add_argument('end_id', help='end id number of supplication')
    parser.add_argument('count', help='count')
    parser.add_argument('source', help='source data')
    args = vars(parser.parse_args())
    add_new_keys_to_supplication(int(args['start_id']), int(
        args['end_id']), int(args['count']), args['source'])
