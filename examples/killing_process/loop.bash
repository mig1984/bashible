echo "I am a second child process doing a loop. Try to kill one of my parents, it will terminate me as well."

while true; do
  echo "x"
  sleep 1
done
