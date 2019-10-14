rm tmp/pids/server.pid
start rails s
TIMEOUT 5
C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe
ECHO opening chrome..
start "google" "http:\\localhost:3000"