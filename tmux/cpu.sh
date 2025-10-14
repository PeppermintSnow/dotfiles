#!/bin/bash

read cpu user nice system idle iowait irq softirq steal guest < /proc/stat

TOTAL1=$((user+nice+system+idle+iowait+irq+softirq+steal))
IDLE1=$((idle+iowait))

sleep 0.5  # small interval

read cpu user nice system idle iowait irq softirq steal guest < /proc/stat

TOTAL2=$((user+nice+system+idle+iowait+irq+softirq+steal))
IDLE2=$((idle+iowait))

TOTAL_DIFF=$((TOTAL2 - TOTAL1))
IDLE_DIFF=$((IDLE2 - IDLE1))
BUSY_DIFF=$((TOTAL_DIFF - IDLE_DIFF))

if [[ $TOTAL_DIFF -eq 0 ]]; then
    echo "0%"
else
    echo $((BUSY_DIFF * 100 / TOTAL_DIFF))%
fi

