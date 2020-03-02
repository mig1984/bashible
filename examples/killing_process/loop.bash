echo "I am a second child process doing a loop. Try to kill the topmost parent, it will terminate me as well immediately."

while true; do
  echo "x"
  sleep 1
done
