#!/bin/bash
#add fix to exercise1 here
sudo route del 208.86.224.90
# I've seen a strange route with "route -n" and deleting it fixed the issue.
