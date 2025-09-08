#!/bin/bash
# monitor.sh - Simple system monitoring script

LOG_DIR="$HOME/system_logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/monitor_$(date +%F).log"

{
  echo "===== System Monitoring Report: $(date) ====="
  echo ""
  echo "---- CPU & Memory Usage ----"
  top -b -n1 | head -20

  echo ""
  echo "---- Disk Usage ----"
  df -h

  echo ""
  echo "---- Largest Directories (Top 5) ----"
  du -sh /* | sort -rh | head -5

  echo ""
  echo "---- Top 5 Resource-Intensive Processes ----"
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

  echo ""
  echo "==========================================="
} >> "$LOG_FILE"
