#!/usr/bin/env python3
import argparse
import datetime


parser = argparse.ArgumentParser(
    description="Calculate the difference between two dates."
)
parser.add_argument(
    "date1",
    type=datetime.date.fromisoformat,
    help="YYYY-mm-dd",
)
parser.add_argument(
    "date2",
    type=datetime.date.fromisoformat,
    help="YYYY-mm-dd (default today)",
    nargs="?",
    default=datetime.date.today(),
)
args = parser.parse_args()
date1, date2 = args.date1, args.date2

if date1 > date2:
    date1, date2 = date2, date1

diff = date2 - date1

print(f"Days between {date1} and {date2} (exclusive): {diff.days}")

