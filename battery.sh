#!/bin/bash

# Read current information about the laptop's battery, the system's load average
# and stores it with a timestamp in a CSV file.

timestamp=$(date -u +"%F %T")
reads=$(ioreg -l -w0 | grep -e '"CurrentCapacity"\|"MaxCapacity"\|"CycleCount"\|"DesignCapacity"' | cut -d= -f2 | paste -s -d "," -)
load=$(sysctl -n vm.loadavg | cut -d " " -f 4)
echo "$timestamp,$reads, $load" >> /Users/andre/Documents/battery.csv
