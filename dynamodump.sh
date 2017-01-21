#!/bin/sh
dynamodump.py --s3 dixa-dynamo-backup -r eu-west-1 -m backup -s "*"
