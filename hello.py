import argparse

argparser = argparse.ArgumentParser(add_help=False)
argparser.add_argument('name')


flags = argparser.parse_args()
name = flags.name


print('Hello World! ', name)