#!/usr/bin/env python

import sys

running_sum = 0

if __name__ == "__main__":
	if len(sys.argv) > 1:
		factor = int(sys.argv[1])
	else:
		factor = 1

	for timer in range(1,21600):
		if timer % 300 == 0:
			running_sum = running_sum + (timer * factor)

	print "## total: %i " % running_sum
	print

	sys.exit(0)
