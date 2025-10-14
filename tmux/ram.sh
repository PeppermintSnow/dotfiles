echo "$(free -h | awk '/^Mem:/ {print $3}')"
