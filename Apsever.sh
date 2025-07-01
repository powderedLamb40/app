#!/bin/bash

clear

# แสดง ASCII Art
cat << "EOF"
   _           __
  /_\  _ __   / _\ ___ _ ____   _____ _ __
 //_\\| '_ \  \ \ / _ \ '__\ \ / / _ \ '__|
/  _  \ |_) | _\ \  __/ |   \ V /  __/ |
\_/ \_/ .__/  \__/\___|_|    \_/ \___|_|
      |_|
EOF

echo ""
echo "======================== SYSTEM CHECK ========================"

echo ""
echo "🖥️  Hostname: $(hostname)"
echo "🌐 IP Address: $(hostname -I | awk '{print $1}')"
echo "🛡️  Internet Status: Checking..."
if ping -c 1 8.8.8.8 &> /dev/null; then
  echo "✅ Internet reachable"
else
  echo "❌ Internet NOT reachable"
fi

# แสดงการใช้งาน CPU
echo ""
echo "⚙️  CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "% user, " $4 "% idle"}'

# แสดงการใช้งาน RAM
echo ""
echo "💾 RAM Usage:"
free -h | awk '/Mem/ {print "Used: "$3" / Total: "$2}'

# ข้อความเริ่มทำงาน
echo ""
echo "✅ Starting is Work"

# SECTION 00: STARTUP PROMPT
echo ""
echo "=============================================================="
echo "                      Server Host Start"
echo "=============================================================="
read -p "Start system Host? (y/n): " answer

if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
  echo "❌ System stopped."
  exit 0
fi

echo ""
echo "🖥️ Session ID: askfgc364dl"
echo "Server Start [$(date "+%Y-%m-%d %H:%M:%S")]"

# ======================== COMMAND CONTROL ========================
echo ""
echo "======================== Command Control ========================"
echo "Type 'help' to see available commands. Type 'exit' to continue monitoring."
echo ""

while true; do
  read -p "Ap shell> " cmd
  case $cmd in
    help)
      echo "Available commands:"
      echo "  help    - Show this help menu"
      echo "  user    - Show current user"
      echo "  device  - Show device hostname"
      echo "  ip      - Show current IP address"
      echo "  chat    - Monitor Chat client"
      echo "  exit    - Exit command mode and start monitoring"
      ;;
    user)
      echo "👤 User: Admin"
      echo "👤 User: P"
      echo "👤 User: David"
      ;;
    device)
      echo "🖥️ Hostname: $(hostname)"
     echo "🖥️ Client: 1apsoxc364dl"
      echo "🖥️ Client: 1apsoxc365dl"
      ;;
    ip)
      echo "🌐 IP Address: $(hostname -I | awk '{print $1}')"
      echo "🌐 IP Address: David | 184.168.1.103"
      echo "🌐 IP Address: P | 184.168.1.102"
      ;;
    chat)
      echo "Starting monitoring..."
      sleep 2
      echo "David : Hi"
      sleep 2
      echo "P : Hi there!"
      sleep 2
      echo "David : imger ID 85611422"
      sleep 2
      echo "P : What the duck Bro"
      sleep 2
      echo "Watching request..."
      ;;
    exit)
      echo "🔁 Exiting command mode. Starting monitoring..."
      break
      ;;
    *)
      echo "❓ Unknown command: $cmd (type 'help' for options)"
      ;;
  esac
done

# ======================== MONITORING LOOP ========================
while true; do
  sleep 120  # 5 minutes

  echo ""
  echo "----------- [$(date "+%Y-%m-%d %H:%M:%S")] Ping Check -----------"
  if ping -c 1 8.8.8.8 &> /dev/null; then
    echo "✅ Internet OK"
  else
    echo "❌ No Internet Connection"
  fi
done